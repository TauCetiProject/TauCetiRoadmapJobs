# FIX-DESIGN-LorentzianGeometry~3: repair of the design review

Files edited: `packages/LorentzianGeometry/design/README.md`, `packages/LorentzianGeometry/design/plan.json`, `packages/LorentzianGeometry/sources.toml`. There is no `Suggested.lean` at the design stage. All three findings are correct.

F01 and F03 are applied differently. F01's suggested repair would restrict a clause that needs no closedness, and the clause it would keep needs a hypothesis the review missed (Hausdorffness). For F03, a certified locator states the eikonal equation itself. Every finding was checked against the pinned Mathlib (`1b1ccf4b`) and Tau Ceti (`2fd255d9`) and the cached source texts.

## REV-DESIGN-LorentzianGeometry~2/F01 (P2) — applied differently

**Change.** In §5.4, "integral curves of `L` through `H ∩ U` stay in `H` while in `U`; exactly one maximal generator segment" becomes three statements:

- the parameter set `{s | γ(s) ∈ H}` is open;
- it is all of the domain when `H ∩ U` is closed in `U`;
- for `M` Hausdorff, every point lies on exactly one maximal generator segment.

The proof sketch, a new Checks block (the review's instance, a branching instance, `κ = 2` on the light cone), `plan.json` 5.4 and the Mathlib contract are updated to match.

**Why differently.**

- *The generator-segment clause needs no closedness.* The maximal segment through `p` is the integral curve through `p`, restricted to the component of `0` in its open parameter set. On the review's instance it is `(1 + s, 1 + s)` for `s > −1`, and it is unique there.
- *The clause does need `[T2Space M]`.* At the pin, `isMIntegralCurveOn_Ioo_eqOn_of_contMDiff_boundaryless` (`IntegralCurve/ExistUnique.lean:228`) is declared under `variable [T2Space M]` (line 184). Witness: glue two Minkowski planes along `{t < 0}`, and take `H` the two lines `{t = x}` and `L = ∂_t + ∂_x`. Through `(−1, −1)` pass two integral curves in `H` that split at `s = 1`.
- *Same pattern elsewhere.* The contract line for that lemma omitted the Hausdorff hypothesis; it is fixed. No other statement of the roadmap uses invariance of `H` under a flow. The Layer 5 Examples, the Worked examples and the double-null generators all use level sets, which are closed in `U`, and they stay true.

## REV-DESIGN-LorentzianGeometry~2/F02 (P3) — applied

**Change.** A `**Checks.**` block is added to §3.5 and to §5.2, and the matching `tests` are recorded in `plan.json` 3.5 and 5.2.

- §3.5: `p + s²v` against `p + sv`; a negative control for constancy, the non-compatible `∇ = D + v⁰Y⁰e₀` with `g(γ', γ') = −1, −¼`; the pregeodesic `e^{2t}` with the wrong reparametrisation sign (second derivative `4`); the de Sitter coordinate lines.
- §5.2: the three plane types; both clauses of the middle condition; the null-normal direction and the Euclidean normal; the mixed-type curve `t = x²/2`; the acoustical slices.

**Same pattern elsewhere.**

- §1.9 defines the Minkowski and acoustical forms and had no Checks block. It now has four Checks: the time coordinate last, the shift sign, the inverse against the Gram matrix, and `c = 0` degenerate. `plan.json` 1.9 gains four tests.
- §5.4 gains Checks from F01.
- §1.8 and §5.4 only name the cases of their theorems; the Layer 1 Examples and the new §5.2 Checks cover those names.

## REV-DESIGN-LorentzianGeometry~2/F03 (P3) — applied differently

**Change.**

- §2.4 causal character: `minguzzi2019` lines 443–449 → lines 450–452, p. 11, plus "the constancy on preconnected sets is proved here".
- §2.4 signature constancy (same pattern): lines 439–445 → the pinned Tau Ceti declaration that proves it.
- §5.3 eikonal: `luoyu2023` 1005–1008 → `dafermosluk2017` §2.2.1, (2.7), lines 1900–1905, p. 38. The level-set claim also cites `luoyu2023` §2.1, lines 999–1000.
- `plan.json` 2.4 and 5.3, the References and `sources.toml` are updated to match.

**Why differently.**

- Lines 440–442 make the choice of future cone continuous; they do not concern continuity of `g`. Only line 452 has the "by continuity, timelike nearby" argument, so I cite lines 450–452 alone.
- The review would keep the uncertified `christodoulou2007` as the only source for the eikonal equation. The certified `dafermosluk2017`, already in the manifest, writes the equation `g(Du, Du) = 0` at line 1903 and says at 1904–1905 that it makes the level sets null.
- `christodoulou2007` stays as a secondary citation under the manifest's range "Ch. 1–2". It cannot be read, and I could not confirm the narrower "Ch. 1".

## Checks run

- **Dependency gate**, exact output:

  ```
  candidate: LorentzianGeometry is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
  depcheck: 240 roadmaps, 2354 edges, 0 problem(s)
  ```

  There is no UPWARD or CYCLE line.
- **`roadmaps resolve`** after the edits: no cross-roadmap citation and no Lean name found nowhere. The tool reported "Lean names outside TauCetiRoadmap were not checked: no pinned Lake packages on this host". So I opened by hand, at the pins, every pinned name my edits rely on:
  - `isMIntegralCurveOn_Ioo_eqOn_of_contMDiff_boundaryless` (`:228`, under `[T2Space M]` at `:184`);
  - `exists_isMIntegralCurveAt_of_contMDiffAt` (`:66`);
  - `TauCeti.Manifold.isLocallyConstant_sigPos_sigNeg_of_continuous` (`NondegenerateMetric/Signature.lean:104`, namespace `TauCeti.Manifold`);
  - `TauCeti.realCliffordForm` (`RealForm/Basic.lean:113`, weights `+1` on the first `p` coordinates and `−1` on the last `q`, lines 107–108).
- **`#check` comparison:** not applicable. There is no `Suggested.lean` at the design stage, and no Lean command was run.
- **Gate failures listed in the brief:** none.
- **Sources:** nothing was fetched. `dafermosluk2017` and `luoyu2023` are already recorded and cached. Their locators were corrected (`luoyu2023` lines 1005–1008 are in §2.1, not §1), and `dafermosluk2017` gains `cited_for` 5.3. No `needs-references.toml` was written.
- **Ownership:** no new carrier, construction or target was introduced; the round adds only Checks, locators and hypotheses. `overlaps.md` lists no open pull request that changes this roadmap and no dropped id.
- **House style** of all added lines: no LaTeX delimiters, paths, process words or pull-request numbers.

## Adversarial pass (new or changed statements)

Values are computed in Python, with derivatives by central differences at step `10⁻⁴`.

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| §5.4 parameter set open | `H = {t=x, x>0}`, `U = ℝ²`, `γ = (1+s, 1+s)`; `H = {t=x, x ∈ (0,1)∪(2,3)}`, `γ = (s,s)` | `S = (−1, ∞)`; `S = (0,1) ∪ (2,3)` | open, not necessarily connected | new statement |
| §5.4 stays in `H` | same `H` on `U' = {x>0}`; light cone in `ℝ^{1+n}∖{0}`; level sets of `t − |x|` | `S = (−1,∞)` = domain in `U'`; `e^{2s}p ∈ H` for all `s`; `du(L) = 0` | holds when `H ∩ U` is closed in `U` | hypothesis added |
| §5.4 unique maximal segment | `{t = x}` in `ℝ²`; two planes glued on `{t<0}`; `H = {t=x, x>0}` in `U = ℝ²` | one segment, `ℝ`; two segments through `(−1,−1)`, splitting at `s = 1`; one segment `(−1, ∞)` | needs `T2Space`, not closedness | hypothesis added |
| §5.4 `∇_L L = κL` | light cone, `L = 2(t,x)` at `(1,1,0)`; `u = t − |x|` | `L = (2,2,0)`, `∇_L L = (4,4,0)`, `κ = 2`; `∇_L L = 0` | holds | Check |
| §3.5 definition | `p + sv`, `p + s²v`; de Sitter `(s,0)`, `(t₀, s)` | acceleration `0`, `2v` (`1.99999`); `0`, `cosh t₀ sinh t₀ = 0.4047` at `0.37` | parametrised; not coordinate straightness | Checks |
| §3.5 constancy | null `(s,s)`; `∇ = D + v⁰Y⁰e₀`, `(log(1+s), 0)` | `0`; `t''+t'² = 0`, `g(γ',γ') = −1, −0.25` at `s = 0, 1` | needs Levi-Civita (already assumed) | Check |
| §3.5 pregeodesic | `(e^{2t}/2, 0)`, `φ = ½ log(2s+1)`; wrong sign `−½ log(1−2s)`; `p + s²v`, `f = 1/s` | `φ'' + 2φ'² = 0`, `γ∘φ = 0.8, 1.5` at `s = 0.3, 1`; second derivative `4.0` at `0`; `φ⁻¹ = s²/2` | sign `φ'' = −f(φ)φ'²` confirmed | Check |
| §5.2 three types | `{t=0}`, `{x¹=0}`, `{t=x¹}` in `ℝ³` | `g⁻¹(df,df) = −1, 1, 0`; `grad(t−x¹) = (−1,−1,0)` | holds | Check |
| §5.2 middle clause | same planes | `η(∂_t+∂_{x²}) = 0`, `η(∂_t) = −1`; `(a,a,b)`: `0, 4, 1` | both clauses needed | Check |
| §5.2 null normals | `∂_t + ∂_{x¹}`, `grad(t − x¹)`, Euclidean `∂_t − ∂_{x¹}` | `g(∂_t,·) = −1, +1`; `η = 0`, `df = 2` | future choice is `−grad f`; Euclidean normal not tangent | Check |
| §5.2 openness of loci | `t = x²/2` | `−0.75, 0, 3` at `x = 0.5, 1, 2`; tangents `0.75, 0, −3` | spacelike and timelike loci open, null locus not | Check |
| §1.9 time last | `realCliffordForm 1 1` | `Q(e₀) = 1`, `Q(e₁) = −1` | holds | Check |
| §1.9 shift | `c = 2`, `v = (1,0)`, `(1,(3,0))` | `0`; unshifted `5`; opposite shift `12` | holds | Check |
| §1.9 inverse | Gram of `a` | `[[−3,−1,0],[−1,1,0],[0,0,1]]` → block `[[−¼,−¼],[−¼,¾]]`; wrong `−3` | `a⁻¹(dt,dt) = −c⁻²` | Check |
| §1.9 `c > 0` | `c = 0` | `a(B, e_j) = 0, 0, 0` | degenerate. P3 note: `c ≠ 0` suffices, and `c > 0` is a normalisation | Check |
| §2.4 locators | `minguzzi2019` 439–452 read | 440–442 cone choice; 443–449 cone bundle and global field; 452 `∂₀` timelike nearby | 287 and 288 pointed at unrelated lines | fixed |
| §5.3 locators | `luoyu2023` 997–1008; `dafermosluk2017` 1900–1905 | 999–1000 null level sets; 1005–1008 `L`, `μ`; (2.7) `g(Du,Du) = 0` and null level sets | eikonal at `dafermosluk2017` | fixed |
| Integral-curve contract | `ExistUnique.lean` | `:184` `variable [T2Space M]` before `:228`; `:66` needs an interior point | contract omitted `T2Space` | fixed |

## For the maintainer

- No target, section or Lean name was renamed or dropped.
- §5.4 changed in substance:
  - "stays in `H` while in `U`" now assumes `H ∩ U` closed in `U`;
  - "exactly one maximal generator segment" now assumes `M` Hausdorff.

  Consumers citing §5.4 inherit both hypotheses, notably CompressibleEulerEquations, whose characteristic boundaries are level sets and therefore closed. The optical-function statements are unchanged.
- §1.9, §3.5, §5.2 and §5.4 gain `**Checks.**` blocks (24 blocks in all); `plan.json` gains 16 tests.
- No suspicious instructions were found in the review text or in any source read.
