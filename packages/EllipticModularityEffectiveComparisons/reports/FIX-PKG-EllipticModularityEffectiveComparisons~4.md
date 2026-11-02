# FIX-PKG-EllipticModularityEffectiveComparisons~4

## F01 (P2) — applied

Verified on main: `TauCetiRoadmap/ImaginaryQuadraticClassNumber/README.md` H3.5 derives γ₂(τ_D)∈{0,−32,−96,−960,−5280,−640320}, and H3.6 certifies the singular values of the reduced representatives (q-expansion enclosures with explicit tails) and recovers the order from its CM j-value. The §5.1 instruction to fix the integers "with exact bounds on their q-expansions" duplicated that.

Changes in `packages/EllipticModularityEffectiveComparisons/README.md`:
- §5.1 identification paragraph: old: prove the four class-polynomial evaluations, fixing the integers by q-expansion bounds → new: import the certified values j(τ_(−r))=γ₂³ (γ₂=−96,−960,−5280,−640320) and order recovery from ImaginaryQuadraticClassNumber H3.5–H3.6; H_(−r)=X−j(τ_(−r)) from ComplexMultiplicationAndExplicitReciprocity §3.1 (degree = class number) plus class number one; the target kept here is j(P_r)=j(τ_(−r)) and the endomorphism-order identification via §§5.1–5.5. No singular value is recomputed.
- Scope and ownership: the ImaginaryQuadraticClassNumber sentence now lists H3.5 and H3.6 with the γ₂ values, certified singular values and order recovery.
- Supplier contract (From TauCetiRoadmap.ImaginaryQuadraticClassNumber, …): now names H3.5 and the H3.6 singular values and order recovery.
- §5.1 *Needs:* and Layer 5 Dependencies: ImaginaryQuadraticClassNumber H3.5–H3.6 added.

Pattern search: "singular value", "q-expansion", "class polynomial", "H3." across the README. The other q-expansion uses (§1 Sturm comparison at lines ~653–663, §5.6-style modular-unit bounds at ~1272, coordinate identification at ~1526) concern other objects, not CM singular values. The §4.x class-number route (line ~919) already imports H3.6 only for the classification. No other duplicate found. The four point exhaustions and the comparison of their points with the CM points stay as targets here.

## F02 (P3) — applied differently

No `silverman-aec` entry or provenance is recoverable. In the whole board history the key appears only in the texts of the two previous reviews, never in any `sources.toml`, so I couldn't restore it faithfully. I took the review's stated alternative instead. In §4.19 and §4.20, old: "(EllipticCurves Layer 1, duality identities and quotient by a finite Galois-stable subgroup, AEC III.6.1–2; …)" → new: "(EllipticCurves Layer 1, the dual isogeny with its two degree identities and the quotient by a finite Galois-stable subgroup; …)". EllipticCurves Layer 1 on main states the dual isogeny with φ̂∘φ=[deg φ] and φ∘φ̂=[deg φ] (its README line 566, which cites AEC III.6.1–2 itself) and the Vélu quotient by a finite Galois-stable subgroup (line 548). No book citation is left in the README, so the manifest needs no entry and `sources.toml` is unchanged. No other AEC citation exists (grep "AEC", "Silverman": none remain).

## Adversarial pass on the changed text

| Statement | Instances | Values computed | Result |
| --- | --- | --- | --- |
| j(τ_(−r))=γ₂³, r=19,43,67,163 | the four γ₂ from H3.5 | (−96)³=−884736; (−960)³=−884736000; (−5280)³=−147197952000; (−640320)³=−262537412640768000 | agrees with the §5.1 table and Checks |
| H_(−r)=X−j(τ_(−r)) from degree = class number = 1 | r=43; also evaluation at the wrong CM value j=0 | H(−884736000)=0; H(0)=884736000≠0 | agrees with the existing r=43 Check |
| Degree argument needs class number one | D=−20 (class number 2) as a negative control | H_(−20) has degree 2, so it is not linear | class number one is a needed input, and it is imported |
| Six-value branch includes D=−3, −11 | γ₂=0, −32 | 0³=0 and (−32)³=−32768 are not among the four table values | the exceptional four are distinguished |
| §4.19 kernel cyclicity (citation change only) | distinct T≠T′ versus backtracking T=T′ | cardinality 4 and exponent 4, versus E[2] with cardinality 4 and exponent 2 | unchanged mathematics |

## Checks

- `lake env lean packages/EllipticModularityEffectiveComparisons/Suggested.lean` (run from the content checkout): exit 0; exactly eight `declaration uses sorry` warnings, at lines 72, 77, 118, 124, 130, 137, 164 and 172, and no errors. `Suggested.lean` was not changed. Its 17 signatures are as recorded in `signatures.md`, and no `#check` re-comparison was needed.
- Depcheck output:

```text
depcheck: 56 roadmaps, 648 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. ImaginaryQuadraticClassNumber is on main. ComplexMultiplicationAndExplicitReciprocity comes earlier in the merge order (line 184, versus 188 for this roadmap).

## Notes for the maintainer

- No Lean names changed. `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged.
- Ownership against open pull requests was not re-searched beyond the supplier H3.5–H3.6, because the repair only moves a computation to an existing owner on main.
