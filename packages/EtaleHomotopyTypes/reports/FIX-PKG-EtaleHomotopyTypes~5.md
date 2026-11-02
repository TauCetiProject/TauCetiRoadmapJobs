# FIX-PKG-EtaleHomotopyTypes~5

Findings of `REV-PKG-EtaleHomotopyTypes~4` (three findings: F01, F02, F03).

## F01 (P1) — applied

Verified: SGA1 line 12295–12313 uses XIII 3.4/3.5 (universal local 1-asphericity), SGA 4 XV 1.16 (0-acyclicity), XIII 3.2 with 1.5(c) (cohomological properness in dimension ≤ 1) and Lemma 4.2. None was owned. Old: §3.9a "Apply SGA1’s geometric formula" with the desingularizability adapter as the only owned premise. New: a subsection §3.8a, *Cohomological properness and the geometric product formula*, with six targets, each with hypotheses, a locator and a proof route taken item by item from SGA1’s proofs:

1. strong desingularizability (the adapter, moved from §3.9a with its three Checks);
2. cohomological properness in dimension ≤ 1 of normal-crossings complements (XIII 2.4(b), 2.7, 5.5);
3. the same for every finite-type K-scheme (XIII 3.1(2)(a), 3.2, by proper descent along a smooth cover);
4. universal local 1-asphericity (XIII 3.3, 3.4(a));
5. 0-acyclicity of X ×_K Y → Y (SGA 4 XV 1.16; Stacks 0385, 0387);
6. the homotopy exact sequence (XIII 4.2) and the geometric product formula (XIII 4.6, including the splitting).

§3.9a now cites §3.8a. The SGA 4 inputs belong with the SGA 4 étale cohomology that EtaleCohomologyFoundations (main, earlier) owns in abelian form. They are declared as three supplier gaps:
- `gap:nonabelian-proper-base-change` (§F.2.1: SGA 4 XII 5.1 for sets and torsors, and VIII 9.4 descent);
- `gap:nonabelian-local-acyclicity` (§F.2.3: SGA 4 XV 1.11, 1.16, 2.1, 4.1);
- `gap:constructible-set-subsheaves` (§F.0.1: SGA 4 IX 2.9).

Each is in `design/plan.json` and in the README's EtaleCohomologyFoundations contract. The other inputs come from existing suppliers: EtaleCohomologyFoundations §§F.0.2, F.0.4, F.3 and ResolutionOfSingularitiesCharacteristicZero §§5.5, 6.2. For a smooth affine piece, §6.2 already gives the strict-SNC compactification. The reviewer's test is now a Check: 𝔾ₘ² has π₁ = ℤ̂(1)², computed from the split exact sequence.

Pattern search: SGA1 XIII 4.6 was cited in §3.9a, in the ResolutionOfSingularitiesCharacteristicZero contract paragraph (now pointing to §3.8a), and in the References and the SGA5 entry (both updated). No other target consumed 4.6 as a black box. Ownership: `roadmaps grep` for 1-aspheric, 0-acyclic and local acyclicity over main and the open heads found only the abelian versions in EtaleCohomologyFoundations §F.2.3. The AbhyankarLemma roadmap (an open pull request) says that it does not own normal-crossings Abhyankar. So this roadmap owns the SGA1 XIII statements; nothing is moved down from a later roadmap.

## F02 (P3) — applied

Verified: SGA1 line 12282–12294 puts no unibranch hypothesis on either factor, and §3.9a's route never used one. Old: "geometrically connected geometrically unibranch finite-type k-varieties". New: "geometrically connected finite-type k-schemes". I chose finite type for both factors, as the reviewer allowed. This keeps the K-rational basepoint step (X_b ≅ X) owned; a qcqs Y₂ would also need invariance of π₁ under extension of algebraically closed fields as a separate input. Unibranchness stays in §§3.9b–3.9c and 4.7. Added the nodal-cubic × 𝔾ₘ Check: ℤ̂ × ℤ̂(1), which agrees with the completion of ℤ × ℤ.

## F03 (P3) — applied

§3.5: the AM 11.1 route now names its inputs as bullets:
- torsor classification of pro-homomorphisms to discrete groups;
- on unibranch schemes, the components of a torsor are finite étale (SGA1 I 10.10 and §11, SGA1 line 1208 and SGA1 line 1310, with SchemeAndStackFoundations §0.10);
- the finite-image criterion for profiniteness;
- for n ≥ 2: the cover tower, rational vanishing through normalization (§F.0.4), Hurewicz (AlgebraicTopology Stage 8, item 3) and Moore–Postnikov induction.

Added three Checks: the nodal cubic, whose raw π₁ is not profinite; 𝔾ₘ, raw π₁ = (C_n), limit ℤ̂(1); Spec k.

§3.8: the Fr 11.5 inputs are now bullets:
- the carrier gap;
- base change of the carrier;
- lissity of R^q f_*A through EtaleCohomologyFoundations §§0.10 and F.3;
- the tower's trivial pro-π₁;
- fibre identification by §3.9b's detection lemma.

Test: for 𝔾ₘ × Y → Y, R⁰ = A and R¹ = A(−1) give kernel ℤ̂(1) and the split sequence. AM and Fr remain uncertified, so these routes are not text-verified.

## Checks run

- `lake env lean packages/EtaleHomotopyTypes/Suggested.lean` (from the pinned content checkout): exit 0, no output. The only Lean change is the Layer 3 docstring bullet, which now names the product formula over a field and over an algebraically closed field. The file declares nothing, so the `#check @name` scratch file would be empty. No binder comparison was possible, and none was needed.
- Depcheck (`gate --depcheck … --movable`): `depcheck: 56 roadmaps, 640 edges, 0 problem(s)`. No UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README: no cross-roadmap citations or Lean names found nowhere.

## Adversarial pass (new and changed statements)

| Statement | Instances | Values computed | Result |
|---|---|---|---|
| NC complement properness | U = 𝔾ₘ, F = C₂, A = K[t]^sh; P = ℙ¹, D = ∅; U = ∅ | 2 torsor classes on both sides (Kummer 1, z; Pic A[z^±] = 0, A^× 2-divisible); trivial / trivial; 1 / 1 | holds |
| Strictly henselian reformulation | K = ℝ, Z = Spec ℝ, A = ℂ, C₂ | 2 classes vs 1 | fails, so K separably closed is required; added as a Check |
| Finite-type properness | nodal cubic N, descent along ℙ¹ → N | classes = F/conj on both sides, = H¹(ℤ̂,F); a single branch loses the gluing element | holds; Check |
| Universal local 1-asphericity | x ↦ x² at 0; node of N over Spec K | Milnor fibre has 2 points (not 0-acyclic); strict localization connected with no torsors | statement limited to structure morphisms; unibranch not needed |
| 0-acyclic projection | X = two points; X = ∅; Spec ℂ over ℝ | disconnected; empty; 2 points | connected, nonempty and separably closed are all needed |
| Geometric product formula | 𝔾ₘ²; Y = Spec K; char p, 𝔸² | ℤ̂(1)²; identity; AS class xz ∉ f(x)+g(z)+℘ by descent on the xz and x^{p^i}z^{p^i} coefficients | holds in char 0; fails in char p |
| §3.9a | Spec ℝ²; Y₂ = Spec k; nodal cubic × 𝔾ₘ over ℂ | diagonal C₂ (2 elements, not 4); g ↦ (g, p(g)); ℤ̂ × ℤ̂(1) = completion of ℤ² | holds without unibranch |
| §3.5 unibranch step | nodal cubic; 𝔾ₘ; Spec k | ℤ-torsor (chain of ℙ¹) has infinite image; ℤ-torsors trivial, π₁ = (C_n); G_k | hypothesis necessary; holds |
| §3.8 cohomological input | 𝔾ₘ × Y → Y | R⁰ = A, R¹ = A(−1), R^{≥2} = 0 (one branch of §0.10's formula) | kernel ℤ̂(1), split |

## Sources

- SGA4: added through the sources service. It resolved only to a paywalled publisher page, so it is recorded `uncertified` and cited by locator: VIII 9.4, IX 2.9, XII 5.1 and XV 1.11, 1.16, 2.1, 4.1, each as SGA1 cites it.
- Stacks, chapter Varieties (`StacksVarieties`): fetched and certified (tags 0385, 0387).
- SGA1: locator and `cited_for` widened to the XIII and I statements now used.
- No text was requested in `needs-references.toml`.
- Source issue: SGA1 XIII 4.6 proof, p. 311 (SGA1 line 12307). The composite that is called an isomorphism should end in π₁(X,a), not π₁(Y,b). This is recorded in §3.8a and in References.

## For the maintainer

- There are three new supplier gaps on EtaleCohomologyFoundations (§§F.0.1, F.2.1, F.2.3). That roadmap is on main, so they are requests to its owners.
- §3.9a is now more general, since unibranch has been dropped. Consumers keep their own hypotheses: §§3.9c and 4.7 stay unibranch.
- New section label: §3.8a. No Lean names changed, and no name cited by another roadmap changed.
- AnabelianGeometryAndNonabelianChabauty cites SGA1 XIII 4.6 the same way, at its product-formula block. It could cite §3.8a here instead.
