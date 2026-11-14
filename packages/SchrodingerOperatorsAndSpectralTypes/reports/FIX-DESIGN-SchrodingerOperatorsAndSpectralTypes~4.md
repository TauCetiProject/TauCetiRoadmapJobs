# FIX-DESIGN-SchrodingerOperatorsAndSpectralTypes~4

This round repairs the six findings of `REV-DESIGN-SchrodingerOperatorsAndSpectralTypes~3` on the
design of `SchrodingerOperatorsAndSpectralTypes`.

- **Files edited:** `packages/SchrodingerOperatorsAndSpectralTypes/design/README.md` and
  `packages/SchrodingerOperatorsAndSpectralTypes/design/plan.json`. `sources.toml` is unchanged:
  teschl Lemma 6.17 and §3.10 were already recorded.
- **No Lean:** the design has no `Suggested.lean`, so no Lean statement changed and nothing was
  elaborated. There was no `#check` binder audit, because there are no declarations.
- **Suppliers read:**
  - UnboundedOperators at the head of its open pull request (`cfd0df5`), §§1.1–1.8, 3.1–3.3 and
    5.4–5.7;
  - SelfAdjointSpectralTheory on main, SA-C12–C19, SA-C86, SA-E01–E13, SA-E26–E31 and SA-E44–E47;
  - QuantumFoundations at its head (`824bab8`), §8.2 and §9.5;
  - Tau Ceti at the pin `2fd255d`.

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes~3/R01 (P1) — applied

**Verified.** UO-C02's API lists only three things: the two definitions with their equivalence,
unitary invariance, and finite-rank windows. Teschl Lemma 6.17 appears only in its prose, as an
input to the Fredholm proof.

**Change.** Old: "Weyl's criterion (UO-C02)" in the scope, the contract, §3.7 and §3.10. New: a
supplier gap `gap:weyl-criterion` (UnboundedOperators, UO-C02 §3.2). It states the full criterion
(unit vectors tending weakly to 0, or an orthonormal sequence). §3.10 now names the direction it
uses. The `A = 0` on `ℂ` versus `ℓ²` Check was added, and plan 3.10b gained the gap and a test.

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes~3/R02 (P1) — applied

**Verified.** UO-A02 proves `A = id[P_A]` for a given `A`. Its resolvent argument covers only the
measure of a given operator. No UO item states the resolvent of `id[P]` for a bare `P`.

**Change.** The generality is kept, and the inverse is now requested as a supplier gap.
- Old (Conventions): "`A_P` … whose spectral measure is `P` (SA-E44)".
- New (Conventions): `∫ (z − s)⁻¹ dP` inverts `z − A_P` (UO-A02, `gap:spectral-integral-resolvent`),
  and then SA-E44 applies.
- Two witnesses were added: the Dirac measure at `2`, and `diag(n)` on `ℓ²` (`n²/(1+n²) ≤ 1`).
- The gap line under the contracts and the plan entry match.

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes~3/R03 (P2) — applied

**Verified.** UO-E04 defines `A`-compactness by `V(A − i)⁻¹`. §4.3 proved compactness at `−1` only.

**Change.** §4.3 now derives `M_V(H₀ − i)⁻¹ = M_V(H₀ + 1)⁻¹[I + (1 + i)(H₀ − i)⁻¹]` from
`LinearPMap.resolvent_sub_resolvent` at `λ = −1`, `μ = i` (Tau Ceti `R(λ) = (λI − A)⁻¹`), with
`IsCompactOperator.comp_clm` and `dom H₀ ⊆ dom M_V`. §4.4 now says "`H₀`-compact in the sense of
UO-E04". Plan 4.3b: statement, prerequisites, and a `change_of_point` test.

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes~3/R04 (P2) — applied

**Verified.** UO-E06 covers real `L²(ℝ³) + L^∞(ℝ³)` potentials only, and it sends the Coulomb
case to a consumer. QuantumFoundations §9.5 owns Coulomb and hydrogen, through UO-E06.

**Change.** Old: "unbounded or singular potentials (`L^p`, Kato class, Coulomb: UnboundedOperators
UO-E06 …)". New: an "Unbounded potentials" scope bullet giving the exact UO-E06 boundary and
QuantumFoundations §9.5 for Coulomb; other `L^p`/Kato-class potentials are out of scope. §4.4 and
plan 4.4b: the `d = 3` clauses are UO-E06 with `V₂ = 0`. Check: `cos x₁`, `d = 3` versus `d = 4`.

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes~3/R05 (P3) — applied

**Verified.** UO-C03 states restriction self-adjointness only under a finite control measure. SA-C86
(main line 1001) and SA-E30 (line 1267) exist on main. `LinearPMap.IsReducing.isSelfAdjoint_restrict`
is at `TauCeti/Analysis/InnerProductSpace/LinearPMap/Reducing.lean:144`.

**Change.**
- The SelfAdjointSpectralTheory contract and scope add SA-C86 and SA-E30.
- Self-adjointness of `A_pp`, `A_ac`, `A_sc` for arbitrary `ℋ` is now attributed to §1.3, SA-C19
  and the Tau Ceti theorem. That theorem is in the Tau Ceti contract and in the Needs of §1.3, and
  §1.4 points to §1.3.
- The plan gained the 1.3 prerequisite and the supplier "what" text.

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes~3/R06 (P3) — applied

**Verified.** On a point with `V = 0` and `s = 1`, `T = i` and `T* = −i`.

**Change.**
- Old: "eigenbasis … of the compact self-adjoint resolvent (SA-C86)".
- New: Tau Ceti `IsSelfAdjoint.exists_hilbertBasis_forall_apply_eq_smul_of_hasCompactResolvent`
  (`Eigenbasis.lean:113`), or equivalently SA-C86 applied to the compact **normal** `T`. Normality
  comes from the resolvent identity, and `T − T* = 2is·TT*`.
- Eigenvalues are transferred by `is + ν⁻¹`.
- A Check and plan 3.9 were updated to match.

## Pattern search (other occurrences)

- **Weyl's criterion:** it was also cited in the scope bullet, the UO contract and §3.7. All three
  are repaired; §3.7 does not use the criterion and no longer cites it. §1.6 and §4.2 use only
  UO-C02's stated finite-rank-window and isolated-eigenvalue forms, so they are unchanged.
- **Resolvent-point changes:** §3.9 changes points only through the Tau Ceti iff at any nonreal `z`,
  and §2.3 writes `(A − μ)⁻¹ = −R_A(μ)` explicitly. Both are unaffected.
- **SA-C86:** in §1.8 it is applied to a compact self-adjoint `V`, which is normal, so that use is
  correct. The contract now says "compact normal".
- **UO-E06:** also cited in the §4.2 Check, the Layer 2 Examples and the QuantumFoundations scope
  bullet. Each of these is consistent with the corrected boundary. The Layer 2 lower bound
  `−a_ε/(1−ε)` was recomputed from §2.3 with `γ = 0`.
- **Pinned declaration added to the contract:** `IsSelfAdjoint.hasCompactResolvent_iff_isCompactOperator_resolvent`
  (`CompactResolvent.lean:69`). It was already used in §§3.8–3.9 but was missing from the Tau Ceti
  contract.

## Adversarial pass on changed statements

| Statement | Instances | Values computed | Result / change |
|---|---|---|---|
| gap weyl-criterion (direction used in 3.10) | `A=0` on `ℂ`, `u_n=1`; `A=0` on `ℓ²`, `e_n`; cusp `v_j` | residuals `0,0`; weak limits `1` vs `0`; `σ_ess = ∅` vs `{0}`; `v_j` disjoint since `3·2^j < 2^{j+2}` | Weak-null hypothesis needed; added as a Check |
| gap spectral-integral-resolvent | Dirac at `2`, `z=i`; coordinate PVM on `ℓ²(ℕ)` | `(i−2)(i−2)⁻¹ = 1`; `Σ n²|x_n|²/(1+n²) ≤ ‖x‖²`; `|s/(i−s)| ≤ 1 + 1/1 = 2` at `s=0,1`: values `0, 1/√2` | Domain inclusion and inverse hold |
| Conventions bare-PVM clause | zero space; `P` at `2` | `ℋ = 0`: all integrals `0`, the statement holds vacuously; `P_{A_P} = δ₂·I = P` | Correct with the gap |
| 4.3 change of point | spectral values `s = 0, 1, 3`; sign slip | LHS `i`, `(1+i)/2`, `(3+i)/10`; RHS `1·(1+(1+i)/(−i)) = i`, `½(1+i)`, `¼(1+(1+i)/(3−i)) = ¼·(4/(3−i)) = (3+i)/10`; slip at `0`: `2−i` | Identity holds; Check added |
| 4.3 bracket bound | `s = 0, 1, 10` | `(s+1)/√(s²+1)`: `1, √2, 11/√101 ≈ 1.095` | `≤ √2`, bounded |
| 4.3 `H₀`-compactness, `V=1` control | `V = 1` | `M_1(H₀ − i)⁻¹ = (H₀−i)⁻¹`: spectrum `{(s−i)⁻¹ : s ≥ 0}` uncountable, not compact | Decay hypothesis needed (existing Check) |
| 4.4 `d=3` specialisation | `d=3`, `V=cos x₁`; `d=4` | UO-E06 with `V₂=0`, `V_∞=V`: domain `H²(ℝ³)`, core `C_c^∞`; `d=4`: UO-E06 does not apply, 4.4 gives `σ ⊆ [−1,∞)` | Boundary correct |
| 4.4 decaying clause in `d=3` | `V = 1_{B_1}` | UO-E06 relative compactness (compact support), `σ_ess = [0,∞)`, `V ≥ 0` gives `σ = [0,∞)` | Consistent with the existing Check |
| 3.9 normal resolvent | point, `V=0`, `s=1`; point, `V=c`, `s>|c|` | `T=i`, `T*=−i`, `TT*=T*T=1`, `T−T* = 2i = 2is·TT*`; `V=c`: `T=(c−is)⁻¹`, `T*=(c+is)⁻¹`, `T−T* = 2is/(c²+s²) = 2is·TT*` | Normal, not self-adjoint; the eigenvalue `is + 1/T = c` is recovered |
| 3.9 empty `X` | `X = ∅` | `L² = 0`, `T = T* = 0` | The "not self-adjoint" claim is restricted to `X ≠ ∅` |
| 1.3 restriction self-adjointness | `U = 0`; `U = span(e₁,e₃)` in `diag(1,2,3)` | `A|_0` on the zero space is self-adjoint with `σ = ∅`; `A|_U = diag(1,3)`, self-adjoint | Tau Ceti theorem applies (closed `U` is complete) |
| 1.3 on UO-C03 subspaces, nonseparable | coordinate ⊕ `M_x` on `ℓ²(ℝ)⊕L²(ℝ)` | `ℋ_pp = ℓ²(ℝ)⊕0`, its projection commutes with every `P_A(B)`; `A_pp` = coordinate operator, self-adjoint | No control measure needed |
| SA-C86 in 1.8 | `V = diag((−1)^{n+1}/n²)` | self-adjoint, hence normal; eigenbasis `e_n`, `|V|^{1/2} = diag(1/n)`, HS energy `π²/6` | Unchanged, correct |

## Checks run

**Dependency gate.** This is the exact output of the command in the brief:

```
candidate: SchrodingerOperatorsAndSpectralTypes is not in the merge order yet; checked as if placed after QuantumFoundations (the intake inserts it when its design is accepted)
note: supplier UnboundedOperators of SchrodingerOperatorsAndSpectralTypes is not in the merge order; it must be inserted before SchrodingerOperatorsAndSpectralTypes
note: supplier VariationalMethods of SchrodingerOperatorsAndSpectralTypes is not in the merge order; it must be inserted before SchrodingerOperatorsAndSpectralTypes
depcheck: 227 roadmaps, 2060 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The two insertion notes are expected at the design stage.

**Other checks.**
- `roadmaps resolve` on the edited README found no cross-roadmap citation and no Lean name missing.
- Every new pinned name was located by source grep at the pins:
  - `Reducing.lean:144`, `Resolvent/Basic.lean:280` (`resolvent` at :169 is `(λ • I − A)⁻¹`),
    `Eigenbasis.lean:113` and `CompactResolvent.lean:69` in Tau Ceti `2fd255d`;
  - `Compact/Basic.lean:271` in Mathlib `1b1ccf4`.
- `plan.json` parses. Only targets 1.3, 3.9, 3.10b, 4.3b and 4.4b changed, plus `suppliers` and
  `gaps`. It still has 44 targets and now 2 gaps.
- A scan of the new prose found no TeX delimiters and no process words.

**Not done.** There was no elaboration, because the design stage has no `Suggested.lean`.

## For the maintainer

- **Two new supplier gaps on UnboundedOperators (open pull request).**
  - `gap:weyl-criterion`: UO-C02 should state Teschl Lemma 6.17 as an item. Its own Fredholm proof
    already uses it.
  - `gap:spectral-integral-resolvent`: UO-A02 should state the resolvent of `id[P]` for a bare
    normalized real PVM.

  Both are recorded in the plan's `gaps` list and as "What UnboundedOperators must provide" lines.
  The second is used only by the Conventions remark that applies Layer 1 to bare PVMs, so it has no
  `neededBy`.
- **No ids or names changed.** No other roadmap's citation changes.
- **Ownership against open pull requests.** It was checked against the roadmaps this brief lists
  and against UnboundedOperators, QuantumFoundations, VariationalMethods, SelfAdjointSpectralTheory
  and CongruenceSpectralGap through `roadmaps show`/`overlaps`. No new object was introduced here.
  The new material is a change-of-point identity inside §4.3 and attribution text.
- **No suspicious instructions** were found in the review or the supplier texts.
