# FIX-PKG-ZagierConjecturePolylogarithms~2

Repair round for the findings of `REV-PKG-ZagierConjecturePolylogarithms` on the package `ZagierConjecturePolylogarithms`. Files changed: `packages/ZagierConjecturePolylogarithms/README.md` only. `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged.

## REV-PKG-ZagierConjecturePolylogarithms/F01 (P2) — applied

**Verified.** Under the README's own conventions (cut cobracket in the order of GR (66), GR line 1217; `Cor_∞(b₀,b₁) = u(b₀−b₁)`, GR line 1250; `u(−1) = 0`; `δ[x]₂ = (1−x)∧x`, which is also the source's convention at GR line 866) the three cuts of `(0,1,y)` give `(1−y)∧y`, so `S₂(y) ↦ −Cor_∞(0,1,y)` is not compatible with cobrackets and the old Check had its two conclusions reversed. Confirmed also through (67): GR's bracket is the README's `s` (GR line 130, `[∞,1,0,x] = x`; line 864), so `Cor_∞(0,1,y) = −Li₂^M(s(∞,0,1,y)) = −Li₂^M(1−y) = Li₂^M(y)`.

**Carrying the sign through weights three and four.** The reviewer asked for the weight-`(k,1)` identification to be pinned and the higher signs recomputed. Doing so uncovered a second convention that the README had left implicit and that the double symbol `D₃₁` depends on: the sign with which `Λ²B₂` sits inside `Λ²L`. With `δ([x]₃⊗y) = [x]₂⊗x∧y` (Conventions), the exterior-algebra differential `d(a∧b) = δa∧b − a∧δb` and the natural inclusion of `Λ²L₂`, the rule on `Λ²B₂` would be `[y]₂⊗δ[x]₂ − [x]₂⊗δ[y]₂`; but `d² = 0` on `δD₃₁(x,y) = T + [x]₂∧[y]₂` holds only with the rule `[x]₂⊗δ[y]₂ − [y]₂⊗δ[x]₂`, which is the source's own convention (GR Lemma 3.13, line 1901). So the source's explicit complex embeds `Λ²B₂` into `Λ²L` with the sign `−1`, and the `Λ²L₂`-component of the Lie cobracket of `D₃₁(x,y)` is `−[x]₂∧[y]₂`. The `(2,2)`-cut of `Cor_∞(0,0,x,1,y)` is `Cor_∞(0,x,1)∧Cor_∞(1,y,0) = −[x]₂∧[y]₂` in `Λ²L₂`, which matches exactly under that sign; with the natural inclusion no sign of `D₃₁`'s image is compatible. Both facts were established numerically (table below) and by the symbolic co-Jacobi test of the cut cobracket.

**Changes (old → new).**
- Conventions: new paragraph giving the Chevalley–Eilenberg rules of the weight-four model on every piece, the identifications with `Λ•L` (`a∧b ↦ a⊗b` for `a` of weight `k > 1`; `a∧b∧c ↦ a⊗(b∧c)`; `Λ²L₂ ≅ Λ²B₂` by `A∧B ↦ −A∧B`), and why the last sign is forced.
- §3.1: the Lie-coalgebra claim now reads "through the identifications of the Conventions"; new Check with the computed `d² = 0` witness and the failing alternative.
- §3.3: `δ₂₂` is identified as the component in the coordinates of §3.1, the `Λ²L₂`-component being its negative.
- §3.4: new Check pinning the order of the cut factors with the witness `⟨a,b⟩∧⟨b,c⟩ + ⟨b,c⟩∧⟨c,a⟩ + ⟨c,a⟩∧⟨a,b⟩`, its negation under reversal, and `d² = 0` on words of length four and five before shuffles.
- §3.8 third Check: "`Cor_∞(0,1,y)` is the motivic dilogarithm with the sign of (67); Hodge period `−(1/2)(2πi)^{−2}L₂`" → the three cuts computed, `Cor_∞(0,1,y) = Li₂^M(y)`, Hodge period `+(1/2)(2πi)^{−2}L₂(y)`, the negative of the §3.9 value of `Cor^H(1,0,y)`, with the reason (reversal inverts the cross-ratio).
- §3.9 first Check: adds `Cor^H(0,1,z) = +(1/2)(2πi)^{−2}L₂(z)` with its derivation.
- §3.12: "`−Cor_∞(0,0,x,1,y)` and `−Cor_∞(0,0,0,1,z)`" → the correlators without signs (a spanning statement).
- §3.13 statement: `Sₘ(y) ↦ −Cor_∞(0,…,0,1,y)`, `D₂₁ ↦ Cor_∞(0,x,1,y)`, `D₃₁ ↦ −Cor_∞(0,0,x,1,y)` → `Sₘ(y) ↦ Cor_∞(0,…,0,1,y)` (`m = 2,3,4`), `D₂₁(x,y) ↦ −Cor_∞(0,x,1,y)`, `D₃₁(x,y) ↦ Cor_∞(0,0,x,1,y)`, cobrackets read through the Conventions; one clause records that the signs differ from the source's Definition 2.3 and why. Checks: the weight-two Check rewritten as asked; new Checks for the single symbols of weights three and four (cut counts, which cuts vanish and by which relation) and for the double symbols (the general four-point cut formula, the four weight-two values, the `(2,2)`-cut), each with the alternative that fails; the `S₃(1)` Check now says "a nonzero rational multiple of" the motivic `ζ(3)`.
- Layer 3 Examples: the example `x = 2, y = 3` over ℚ was degenerate (`[2]₂ ↦ u(−1)∧u(2) = 0`, so `[2]₂ = 0` in `B₂(ℚ)` and the displayed `(2,2)`-component vanished); replaced by `x = 3, y = 5` with the image `D₃₁(3,5)`, the `(2,2)`-cut `−[3]₂∧[5]₂`, and why it is nonzero.

No Lean statement changes: neither headline mentions the realization, and `Suggested.lean` is untouched.

## REV-PKG-ZagierConjecturePolylogarithms/F02 (P3) — applied

**Verified.** M20 Theorem 11 (line 899) states continuity on `ℂ^{n+1}` minus the full diagonal; for `n = 1` this is continuity of `log|z₀ − z₁|` off `{z₀ = z₁}`, which holds. The old Check gave a false reason for `m > 1`. M20's Lemma 29 (line 2378) is itself stated for `n > 1`, so `m > 1` is the natural scope of the partial-collision clause and stays.

**Change.** §3.10 third Check: "`log|z₀ − z₁|` is not continuous at `z₀ = z₁`, so `m > 1` is needed" → for `m = 1` the continuity clause holds on the complement of the diagonal; there is no partial collision, the correlator depends on the tangent vector (§3.8) and is unbounded near the diagonal; the partial-collision clause has content only for `m > 1`, the scope of Lemma 29, where the limit keeps the coincident arguments.

## Checks

- **Elaboration.** `lake env lean` on `Suggested.lean` from the content checkout: exactly two warnings, `declaration uses 'sorry'` at lines 123 and 132, nothing else, 23 s. The file is unchanged, so the elaborated signatures recorded by the worker stand; `#check @name` was not re-run (nothing to compare anew).
- **Depcheck.** Output:

```text
depcheck: 242 roadmaps, 2480 edges, 0 problem(s)
```

  No UPWARD or CYCLE line, no `moved:` line (the moved order already places the roadmap after `Polylogarithms`).
- **Citations.** `roadmaps resolve` on the README: "Lean names found nowhere: None"; no cross-roadmap citation reported missing.
- **Ownership against open pull requests.** No construction was added, only conventions and Checks on objects the package already owns; ownership was not re-searched this round.

## Adversarial pass on the added and changed statements

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Cut cobracket order, `⟨vᵢ,…,vⱼ⟩∧⟨vⱼ,…,v_{i−1}⟩` | `⟨a,b,c⟩`; reversed `⟨c,b,a⟩`; words of length 4 and 5 with distinct letters and `(p,p,x,q,y)` | `⟨a,b⟩∧⟨b,c⟩ + ⟨b,c⟩∧⟨c,a⟩ + ⟨c,a⟩∧⟨a,b⟩`; reversed gives the negative (`u(−1) = 0`); `d²` on each word: `0` nonzero terms, with and without pure words set to zero | a Lie cobracket before shuffles; order pinned | §3.4 Check added |
| Weight-two realization `S₂(y) ↦ Cor_∞(0,1,y)` | `(0,1,y)`; `(1,0,y)`; via (67) | `(1−y)∧y`; `y∧(1−y)`; `−Li₂^M(1−y) = Li₂^M(y)` | plus sign | §3.13, §3.8 |
| `Cor^H(0,1,z) = +(1/2)(2πi)^{−2}L₂(z)` | shift by `−1`, rescale by `−1`: `(0,1,z) → (1,0,1−z)` | `−(1/2)(2πi)^{−2}L₂(1−z) = +(1/2)(2πi)^{−2}L₂(z)` | consistent with M20 line 895 | §3.9 Check |
| `S₃(y) ↦ Cor_∞(0,0,1,y)` under `a∧b ↦ a⊗b` | the 8 cuts of `(0,0,1,y)`; numeric over `ℚ(i)` with functionals `D⊗log|·|`, `D⊗ord₃` at `y = 5/9+5i`, `−4/9−4i`, `5/3−5i`, `8+i` | six cuts vanish (`u(0)`, `u(−1)`, shuffle `2⟨X₁,X₀,X₀⟩`); survivors `Cor_∞(0,1,y)∧u(y)`; numeric: cut `0.8415 / −1.0418`, `−0.7944 / 1.1411`, `−0.8300 / 0.4994`, `0.1107 / 0`; reference identical | equal; `b∧a ↦ a⊗b` would negate | §3.13 Check |
| `D₂₁(x,y) ↦ −Cor_∞(0,x,1,y)` | general four-point cut formula; the four weight-two values; numeric at four random `(x,y)` in `ℚ(i)` | `Cor_∞(0,x,1) = −[x]₂`, `Cor_∞(x,1,y) = [(y−x)/(1−x)]₂`, `Cor_∞(1,y,0) = [y]₂`, `Cor_∞(y,0,x) = [y/x]₂`; cut `−0.1772 / −1.2792` versus (38) `+0.1772 / +1.2792`, and likewise `±1.4109, ±0.9081`, `±0.1954, ±1.4642`, `±1.3365, ±0.1600` | cut = −(38) in every instance | §3.13 |
| `S₄(y) ↦ Cor_∞(0,0,0,1,y)` | the 15 cuts; numeric at `y = 3+3i`, `1/3+2i` | only `Cor_∞(0,0,1,y)∧u(y)` survives (shuffle `3⟨X₁,X₀,X₀,X₀⟩ = 0`, every `(2,2)`-cut has a repeated letter); `(δ⊗id)` functionals: cut `0.6747`, `−0.5919`; reference identical | equal | §3.13 Check |
| `d² = 0` on `δD₃₁(x,y) = T + [x]₂∧[y]₂` | rule `[x]₂⊗δ[y]₂ − [y]₂⊗δ[x]₂` (C1) versus the natural `[y]₂⊗δ[x]₂ − [x]₂⊗δ[y]₂` (C2); six random `(x,y)` in `ℚ(i)`, functional `D(w)(log|a| ord₃(b) − ord₃(a) log|b|)` | at `x = −7/9−8i, y = −2+3i`: tensor part `−0.5011`, C1 part `+0.5011`, sum `0`, C2 sum `−1.0023`; at `x = 8+9i, y = −1/3+8/3i`: `+0.0236`, `−0.0236`, sum `−7·10⁻¹⁷`, C2 sum `+0.0471` | closed under C1 only; so `Λ²B₂ ⊂ Λ²L` carries the sign `−1` | Conventions, §3.1 Check |
| `D₃₁(x,y) ↦ Cor_∞(0,0,x,1,y)` | the 15 cuts of `(0,0,x,1,y)`; numeric at `x = −8/9+6i, y = 4+5i` and three more | `(3,1)+(1,3)` cuts: `0.1206 / 0.1481` versus `T`: `0.1206 / 0.1481` (also `0.0699 / −0.0837` twice); `(2,2)`-cut `−[x]₂∧[y]₂` in `Λ²L₂`, model `+[x]₂∧[y]₂`: `0.0275` versus `0.0275`, `−0.1536` versus `−0.1536` | equal with the sign of the Conventions; with the natural inclusion the `(2,2)` parts have opposite signs for every choice of the overall sign | §3.13 Check |
| `Cor_∞(0,0,x,1) = Cor_∞(0,0,1,1/x)`, `S₃(1/x) = S₃(x)` | rescaling by `1/x` (`m = 3 > 1`); the difference `Cor_∞(0,0,1,x) − Cor_∞(0,0,1,1/x)` | zero cobracket, constant by rigidity, zero at `x = 1` | holds | none |
| Layer 3 example `D₃₁(3,5)` over ℚ | `x = 2` (old), `x = 3, y = 5` (new) | `[2]₂ ↦ u(−1)∧u(2) = 0`, so `[2]₂ = 0` in `B₂(ℚ)` (Bloch group of ℚ is torsion); `[3]₂ ↦ 2∧3`, `[5]₂ ↦ 2(2∧5)`, independent, so `[3]₂∧[5]₂ ≠ 0`; `Cor_∞(0,3,1) = [−2]₂ = −[3]₂`, `Cor_∞(1,5,0) = [5]₂` | old example degenerate, new one nonzero | Examples |
| §3.10 at `m = 1` | full diagonal `{z₀ = z₁}`; the tangent vector `λ∂/∂t` | `log|z₀−z₁|` continuous off the diagonal; Green function shifts by `log|λ|` | continuity clause true, partial-collision clause empty | §3.10 Check |
| `S₃(1)` image | period `L₃*(1) = 3ζ(3)/8` | nonzero | "a nonzero rational multiple of the motivic `ζ(3)`" | §3.13 Check |

The numeric witnesses were produced by three short Python scripts in the job's scratch directory (`num/d2test.py`, `num/cojacobi.py`, `num/realization.py`): exact Gaussian-rational arithmetic for the arguments and valuations, a Bernoulli-series Bloch–Wigner function validated on `D(i) = 0.9159656`, `D(e^{iπ/3}) = 1.0149416`, a five-term residual of `10⁻¹⁶` and `D(z)+D(1−z) = D(z)+D(1/z) = 0`.

## For the maintainer

- **Convention made explicit.** The weight-four explicit complex of the source (and of this roadmap) embeds `Λ²B₂` into `Λ²L` with the sign `−1`; this is forced by GR's `δ([x]₃⊗y) = [x]₂⊗x∧y`, its Lemma 3.13 rule on `Λ²L₂` and `d² = 0` on (38). Nothing in the model, in `Suggested.lean`, in `Γ(F,4)` or in the K-theory comparison changes; the sign enters only the realization §3.13 and the reading of §3.1's Lie-coalgebra claim. Roadmaps that state the same explicit complex (Polylogarithms §4.5 names `Γ(F,4)` as this roadmap's) are unaffected.
- **Realization signs now differ from GR Definition 2.3 in three entries** (`{y}₃`, `{y}₄`, `{x,y}₂,₁`, besides the weight-two entry the reviewer found): GR's entries are mutually consistent relative to its weight-two entry, so correcting the weight-two sign alone, as the finding literally proposes, would break weights three and four; the README states the consistent set.
- **Source observation.** GR Lemma 3.13, line 1901, prints `{−X₁}₂⊗δ{−X₂}₂ + {−X₂}₂⊗δ{−X₁}₂`; the two displays above it (lines 1893–1898 and the cyclic shift) give a difference, as antisymmetry of `Λ²` requires. Affects nothing beyond the sign convention recorded here.
- No name cited by another roadmap changed; no supplier gap was added or removed.
