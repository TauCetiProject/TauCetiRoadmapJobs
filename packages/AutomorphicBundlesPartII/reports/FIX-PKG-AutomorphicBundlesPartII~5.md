# Repair report: AutomorphicBundlesPartII

## F01 (P1) — applied

"Perfect proper pushforward" was dropped from the SchemeAndStackFoundations contract. EnhancedDerivedSheaves E1.9 (`perfect_proper_pushforward`) was added to Scope, the EnhancedDerivedSheaves contract, the §1.4 proof route and Needs line, and the Layer 1 Dependencies, applied with E=F_can or F_sub, G•=O_X[0], proper flat finitely presented. Added a target-flatness negative-control Check to §1.4.

Evidence: EnhancedDerivedSheaves on main, §E1.9 (README heading at line 925, statement near line 1057), states perfectness of `Rf_*(E ⊗ᴸ G•)` for finitely presented f, perfect E and bounded G• that is termwise flat over the target with proper support, and states its base change. It specialises to `Rf_*E` for f proper, flat and finitely presented. A search of the SchemeAndStackFoundations README on main for perfect pushforward finds only §5.7 (K-theoretic pushforward), which this package does not cite. EnhancedDerivedSheaves is on main, so the citation points in the allowed direction. No supplier gap was added, since E1.9 already owns the statement.

Pattern sweep: "perfect pushforward" appears at three other places. The §1.4 base-change API bullet is now covered by the E1.9 citation, because E1.9 also supplies the base change. The §2.4 Check "for Δ=1 the conclusion reduces to proper perfect coherent pushforward" is prose and claims no supplier. The C1.9 line is a GAGA comparison, a different object. None of these needed an edit.

## F02 (P3) — applied

"Interchanging local support with completion exchanges these answers incorrectly" → ordinary local cohomology agrees with completion at both endpoints (A for I=(0), 0 for I=(1)). So these endpoints separate completion from the open-complement term, but not from local cohomology. The following k[x] Check is the one that separates the two.

## Adversarial pass (changed statements)

| Statement | Instances | Values | Result | Change |
|---|---|---|---|---|
| §1.4 perfectness via E1.9 | X=ℙ¹_O, F=O(−2) | H⁰=0, H¹=O (Serre duality), so RΓ=O[−1]; base change to A₂ gives A₂[−1] | perfect on both sides | added as a Check |
| §1.4 target flatness | Spec k→Spec k[ε]/(ε²), E=O | pushforward is k, and Tor_j^A(k,k)=k for every j≥0 | not perfect, and excluded by E1.9's flatness | added as a negative-control Check |
| §1.4 empty D, X=Spec O | F=O | C_sub=C_can=O[0] | consistent with E1.9 when f is the identity | none |
| §3.0a endpoint Check | I=(0), I=(1), nonzero A | RΓ_V(0)A=A=Λ_(0)A; RΓ_V(1)A=0=Λ_(1)A; open complement ∅ resp. X | endpoints do not separate support from completion | Check corrected |
| §3.0a k[x], I=(x) | A=k[x] | completion: H⁰=k[[x]], H¹=0; local cohomology: H⁰=0, H¹=k[x,x⁻¹]/k[x], which contains x⁻¹≠0 | the two are separated | kept |

## Checks

- `lake env lean packages/AutomorphicBundlesPartII/Suggested.lean`, run from the content checkout, exits 0. Its only output is `declaration uses sorry` warnings, the last at line 67. Suggested.lean was not changed, so the three elaborated signatures in signatures.md still hold and no `#check @name` comparison was needed.
- `roadmaps resolve` on the README reports "Lean names found nowhere: None." In particular, `perfect_proper_pushforward` resolves to EnhancedDerivedSheaves on main.
- Depcheck output: `depcheck: 56 roadmaps, 652 edges, 0 problem(s)`. There is no UPWARD or CYCLE line.

## Notes for the maintainer

- No Lean names changed. The package's `plan.json` gaps, metadata and sources were not changed.
- EnhancedDerivedSheaves E1.9 is now an additional cited section of an earlier, on-main supplier.
- Ownership against the open pull requests was checked only for this object: perfect proper pushforward is owned on main by EnhancedDerivedSheaves E1.9.
