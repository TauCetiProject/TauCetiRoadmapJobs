# PKG-InertAnticyclotomicCMMainConjecture: report

Deliverables: `packages/InertAnticyclotomicCMMainConjecture/README.md`, `Suggested.lean`, `metadata.toml` (`topic = "math.NT"`, as on main), `sources.toml` and the top-level `gaps` list of `design/plan.json` (nothing else in plan.json changed; the diff touches only that list).

Inputs. The brief names `design/review.json` and a `reports/` folder of review notes. Neither existed: the folder was empty and there was no review.json. The accepted review is recorded in the `review` field of `design/plan.json`: accepted on 2026-10-19, with node verdicts and notes. I applied it. Its note says the design's `design/README.md` "still shows the design's text" and must be re-rendered from the plan. The README was therefore generated from `plan.json`, the reviewed version: G4 and G6 are closed, the strict bound uses only the injective half of restriction, the specialisation-length lemma was added, and Rubin's Theorem 4.1(ii) replaces the split-prime form.

## Headline theorems

| Headline | Status | What it lacks at the pins |
|---|---|---|
| §4.6 Inert anticyclotomic CM main conjecture (BKO21 Thm 6.1 over Λ_R, Gross curve over H) | not statable | Signed Selmer groups of the avatar over the anticyclotomic tower; the Lubin–Tate formal O-module with its signed points and character logarithms; the anticyclotomic local-unit module, its Coates–Wiles derivatives and the primitive class, hence L_p; Gross Q-curves with p-adic avatars; characteristic ideals over R⟦Γ⁻⟧. The pinned Tau Ceti has Hecke characters (`TauCeti/NumberTheory/NumberField/Global/HeckeCharacter/*`), continuous cohomology and `TauCeti.completedGroupAlgebra`. It has no `charIdeal` and no Lubin–Tate module, and its only Selmer group is `WeierstrassCurve.Affine.selmerGroup₂` (2-descent). |
| §4.2 Opposite signed torsion, S_(−ε)=S_str=0 (AHII05 Thm 3.6 for Gross curves) | not statable | the same signed Selmer carriers, plus compact corestriction limits with Cartier-dual conditions |
| §4.4 Opposite signed characteristic formula char(X_(−ε))=char(H^ε/loc C) | not statable | signed carriers, the all-auxiliary elliptic-unit module and characteristic ideals over R⟦Γ⁻⟧ |
| §6.4 Finite-character CM rank bounds (BKO21 Thm 6.2) | not statable | the rational p-adic Selmer group of V_pE over K_n, χ-parts of Mordell–Weil groups with CM coefficients, and L_p (whose order at χ is the bound) |

`Suggested.lean` therefore states nothing: a module docstring listing these headlines and what each lacks, plus an empty namespace. The design's "light coordinate facet" (a coordinate in an arbitrary rank-one based module and its basis change) and the reviewer's conductor/sign and control-element definitions (`ahSign_eq_neg_bkoSign`, the n=0 control example) are not headlines. They follow in a line from `Module.Basis` and `Ideal.span_singleton_mul_left_unit`, or are Checks. Under the acceptance-test rules they are padding, so they stay in the README as §2.4 and §5.1 with their Checks.

Elaboration: `lake env lean <Suggested.lean>`, run from the content checkout, exits 0 with **0 `sorry` warnings and no other message**. The scratch file for the `#check @name` comparison would be empty, since the file declares nothing, so there was no binder to compare.

## Corrections to the design (what I changed and why)

1. **Nonexistent supplier.** The plan imports the elliptic-unit Euler system and Rubin's Theorem 4.1(ii) from "CMAllPrimeMainConjectures CZ.0/CZ.2". That roadmap is not on main, not in any open pull request (`roadmaps grep CMAllPrime`: no match), not in the merge order and not a board package. I declared two supplier gaps on **NonordinaryCMSpecialValues NCM.1** (merge order 216, earlier than this roadmap at 219): `gap:elliptic-unit-euler-system` and `gap:inert-two-variable-main-conjecture`. Why that roadmap is the owner:
   - It already owns the normalised elliptic-unit classes (NCM.1/normalized-zeta-class) that these extend.
   - It sits after PadicFamilies §4.0.1 (theta units) and EulerSystemsAndKolyvaginSystems (Layer 8) in the merge order, so it can consume both.
   - EulerSystemsAndKolyvaginSystems says explicitly that "applications supply their own classes". It also comes before PadicFamilies, so it cannot construct the elliptic units.
   - Planning Rubin's whole 1991 proof here would re-plan an independent theorem: Gillard's class-number formula, Kolyvagin systems and the §§5–10 Iwasawa theory.
2. **G1 resolved by citation.** Every early CM contract of the design's G1 is now a named section of NonordinaryCMSpecialValues:
   - NCM.0/cm-period;
   - NCM.2/inert-frobenius, semilocal-splitting and cm-lubin-tate;
   - NCM.3/twisted-root-sign and forced-central-zero;
   - NCM.5/central-nonvanishing;
   - NCM.1/elliptic-reciprocity and period-change.

   ComplexMultiplicationAndExplicitReciprocity §§4.1 and 4.3 (open pull request, merge order 186) supply the CM Hecke character, its Tate components, the Frobenius absolute values and the Gross characters.
3. **G3 and G5 are targets, not gaps.** They are proof obligations of this roadmap and are written as §3.2 (descent), §4.5 (primitive lattice comparison) and §4.3 (Billot with R-coefficients and the involution), with routes. The `gaps` list now holds only supplier gaps, in the brief's schema.
4. **The main conjecture does not depend on §4.3 (Billot/G5).** I read AHII05 pp.616–617. The split identity (4.2) is proved from (3.3), Proposition 3.3 and the splitting alone; Theorem 4.1 is used only for the non-split identity (4.1). §4.4 is therefore split into identity 1, which needs §4.3, and identity 2, which needs only §3.5. §4.6's *Needs* omits §4.3. The design had made the endpoint wait on G5.
5. **The weak-Leopoldt/torsion input of §3.4 names its real source.** AHII05 Prop 3.3(i) derives the torsion of X_str from Euler systems (Rubin's book), not from Rubin 1991. I cite EulerSystemsAndKolyvaginSystems §8.25 together with §8.11's condition (*). The anticyclotomic tower is not admissible: ESKS §8.1 records that inert primes split completely in it.
6. **Supplier node IDs mapped to README sections:**
   - ALU.x → AnticyclotomicLocalUnits §§0.1, 1.2–1.5, 2.4, 3.1, 3.2, 3.6, 4.2–4.4, 8.2, 8.4, 8.5;
   - SIC L1/L2/L3 → SelmerIwasawaCohomology §§2.1–2.6, 2.10, 2.13, 2.19, 3.0, 3.1, 3.3, 3.10–3.12, 3.16 (that README has no Layer 1);
   - AGD R02.2/R02.4 → ArithmeticGaloisDuality §§R02.2.2–R02.2.3, R02.4.2–R02.4.4, D7.7.1–D7.7.2;
   - PMIA L4/L5 → PadicMeasuresIwasawaAlgebras §§1.7, 4.3, 4.5, 4.6. The plan's L5 request (specialisation exactness with Tor/H² errors) is already supplied by SelmerIwasawaCohomology §§3.3, 3.10 and 3.16, so it needs no gap.
7. **Pins updated.** The plan's baseline pins (Mathlib 082e2d3, Tau Ceti f790474) differ from the content checkout's pins (Mathlib 6b7abb3, Tau Ceti a91d3aa). Every library name used was re-read at the current pins:
   - Mathlib: `Module.length` at RingTheory/Length.lean:30; `Module.length_le_of_surjective` at :201, whose hypothesis `hg` is a section variable via `include`; `Module.length_eq_finrank` at :292; `IsLocalRing.length_restrictScalars` at RingTheory/LocalRing/Length.lean:54; `Polynomial.cyclotomic_prime_pow_mul_X_pow_sub_one` at RingTheory/Polynomial/Cyclotomic/Basic.lean:527; `Module.Basis` at LinearAlgebra/Basis/Defs.lean:89; `Ideal.span_singleton_mul_left_unit` at RingTheory/Ideal/Span.lean:100; `IsGalois.normalBasis` at FieldTheory/Galois/NormalBasis.lean:120.
   - Tau Ceti: `TauCeti.completedGroupAlgebra` at Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Basic.lean:145; `TauCeti.IsCompactModule.completedGroupAlgebraModule` in Module.lean of that directory; `WeierstrassCurve.Affine.selmerGroup₂` at AlgebraicGeometry/EllipticCurve/MordellWeil/SelmerGroup.lean:104 (namespace `WeierstrassCurve.Affine`).
8. **Sign dictionary re-verified at the source.** AHII05 p.613 (AHII05 line 103) defines Ξ⁻_AH as the trivial character plus exact order p^k with k odd, and Ξ⁺_AH as k even, k≥2. So Ξ_AH^s=Ξ^(−s) here and the point labels agree, as the design says.
9. **Small statement repairs:**
   - §5.4: the comparison map is now written as the dual of the sum of the inclusions Sel_±[ω^±]→Sel (AHII05 Prop 5.3).
   - §5.3: written as injectivity of Sel_s(K_n,W)[ω_n^s]→Sel_s(K∞,W)[ω_n^s] with finite cokernel.
   - §3.3: proves H⁰(Ψ∞,W)=0 in place. It used to cite §5.2, which needs §3.3, a cycle.

## What the README could not support

- Rubin's Theorem 4.1(ii) and the full elliptic-unit Euler system: these are the supplier gaps of correction 1. §§3.1, 3.4 and 3.5 depend on them.
- Restriction of scalars from R⟦T⟧ to O⟦T⟧ for a general base O (PMIA §4.6 does only the base ℤ_p): `gap:restriction-of-scalars-finite-extension`. §4.6's last clause depends on it.
- Identifying the charDivisor coefficient at a character prime with the order of vanishing: `gap:character-prime-multiplicity`, on PMIA §4.6. §5.5 depends on it.
- Notions moved down from later roadmaps: none. No supplier is later in the merge order.

## Duplication sweep (by object)

Each item is either deleted here and cited, or kept with its difference stated.

- **Local theory, deleted and cited:** the signed unit modules and derivatives (ALU §§1.2–1.5), the integral decomposition (ALU §8.2), the generator nonvanishing (ALU §8.4), the finite signed Kummer images (ALU §8.5), the Kummer pairing (ALU §2.4), the annihilators (ALU §3.6) and conductor parity (ALU §0.1). None is planned here.
- **Kept with a stated difference:** the design's IC.0/signed-scalar-extension is kept as §0.5, a scalar-derivative characterisation after the decomposition. ALU §1.5 is tensor-valued and comes before the decomposition.
- **Selmer and Iwasawa machinery, cited only:** Selmer data and kernels, dual structures, Poitou–Tate, the dual action, Iwasawa cohomology, control and duality (SIC), and continuous cohomology and duality (AGD). The design's API names `InertCM.signedSelmer`, `InertCM.selmerDual`, `InertCM.compactSelmer` and so on are now prose facts in the README: none is a Suggested declaration, so no backticked name of this roadmap remains.
- **Characteristic ideals and divisors** (PMIA §4.6) are used without being redefined. The signed control elements are kept as §5.1 (Kobayashi-type signed products; not found on main or in any open pull request by `roadmaps grep` for ω_n^±). Their factors are PMIA §4.3's cyclotomic elements and Mathlib's `Polynomial.cyclotomic`.
- **Specialisation-length lemma:** kept as a README target (§5.5). Its generic half follows from four Mathlib lemmas, which are cited. The Λ-specific half is the PMIA gap.
- **Hecke characters, CM Tate components and Gross characters:** deleted and cited (ComplexMultiplicationAndExplicitReciprocity §§4.1, 4.3).
- **Ownership against open pull requests:** checked for every construction above with `roadmaps grep` over main and the 354 open heads ("signed Selmer", "Rubin's p-adic L", "elliptic unit", "CMAllPrime", "InertAnticyclotomic"). ModularIwasawaMainConjectures (open pull request, merge order 263, later) has Kobayashi signed Selmer groups from Coleman maps over the *cyclotomic* tower for modular forms. That is a different object, and it is not consumed here.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Conductor dictionary §0.3 | χ=1, order p, order p², p=5 | c=0,2,3; signs +,+,−; order-parity would give +,−,+ | holds | Check added for the order-parity wrong model |
| AH/BKO label swap §0.3 | AHII05 p.613 definition | Ξ⁻_AH={1}∪{k odd} = {c even}=Ξ⁺; E^±_AH kills Ξ^∓_AH = Ξ^± | holds | none |
| Root-number sign §2.3 | ε=+, χ of order p², p=5 | W=(−1)^3·1=−1 → L(φ̄χ,1)=0 → ξ∈V⁺ ✓; order p: (−1)^2=+1 | holds | none |
| Trivial character §2.3 | ε=− | L(φ̄,1)=0 by the functional equation; (−1)^0·(−1)=−1 agrees but is not used at c=0 | holds | none |
| Euler factor §2.2 | χ=1, φ̄(p)=−p, p=5 | 1−(−5)/25=6/5=1+p⁻¹ | holds | none |
| Interpolation direction §2.5 | a=γ, χ(γ)=ζ of order 5 | δ_(χ⁻¹)(γv)=χ⁻¹(γ)⁻¹δ=ζδ; the wrong location gives ζ⁴≠ζ | holds | Check with ζ⁴≠ζ |
| Coordinate §2.4 | ξ=πv; u=1+T, a=T | coordinate π; u⁻¹a=T/(1+T), ideal (T) | holds | none |
| Control elements §5.1 | n=0; n=2, p=5 | ω_0⁺=1, ω_0⁻=γ−1, product γ−1; degrees 20+5=25=deg(γ^25−1) | holds | none |
| Zero sets §5.1 | order 5 at n=2; order 25 | Φ_5(ζ_5)=0 → ω⁻; Φ_25(ζ_25)=0 → ω⁺ (c=3, Ξ⁻ = zeros of ω⁺ = Ξ^(−(+))) | holds | none |
| Comaximality §5.1 | n=1, n=2 | n=1: (1,·)=unit; n=2: resultant Φ_25(1)=5, all ≡ T^k mod p, so ideal ⊂ (p,T) | the design's "need not be unit" holds | Check made explicit |
| Product formula / misprint (AHII p.620) | definitions p.618 | ∏_(k=0..n)Φ_(p^k)=X^(pⁿ)−1, exponent pⁿ not p^k | misprint confirmed | recorded in References |
| Away-p vanishing §1.3 | good v, q=4 | |α|=2≠1, |q/α|=2≠1 → H⁰=H²=0, Euler char → H¹=0 | holds | integral-nonvanishing Check corrected: H¹(K_v,W)=W(−1)^Frob, nonzero iff α≡q mod 𝔪_R |
| Inverse different §0.4 | R=O, R=O[√π] | O: inverse different O; O[√π]: different (2√π), quotient (√π)⁻¹R/R of order p² | holds | Check rewritten with this computation |
| Trace normalisation §0.4 | O/ℤ_p | Tr(1)=2, so the pairing of unit vectors is 2/p^k | holds | none |
| Local CM comparison §1.2 | multiplication by u∈R× vs by π | u fixes the submodule; π has kernel F[π] of order p² | holds | none |
| Selmer inclusions §1.4 | n=0, R=O | L_0⁺=0=strict, L_0⁻=ordinary → Sel_+=Sel_str, Sel_−=Sel at K | holds | Layer 1 example |
| Dual action §1.5 | χ-eigenvector | (γf)(x)=χ(γ)⁻¹f(x); the direct rule fails equivariance | holds | none |
| Global ranks §3.4 | Euler characteristic, K with r₂=1, rank-1 coefficients | rank H¹_Iw − rank H²_Iw = 1 | holds | Check; rank one ≠ free, example (π,T) |
| Opposite torsion §4.2 | ε=+, ε=− | torsion X_−, X_+; X_ε rank 1 by §4.1 | holds | none |
| Signed characteristic §4.4 | H^ε=Λ, S_ε=(T), C=(T²), char X_str=(T) | char X_(−ε)=(T)(T)=(T²)=char Λ/(T²); using S_ε in place of C gives (T) | holds | Check |
| (π) retention §§4.4, 4.6 | C=πS_ε; L_p=π | factor (π), μ=1, invisible after inverting p | holds | none |
| Restriction of scalars §4.6 | R/O degree 2, L_p=T | Λ_O-char = (T²), not (T) | holds | gap declared on PMIA §4.6 |
| Involution §4.3 | T−a, a∈𝔪 | ι(T−a) has zero a′=(1+a)⁻¹−1≠a (a′=a forces a=0 or a=−2∉𝔪 for odd p) | holds; involution matters | Check |
| Specialisation length §5.5 | A DVR, M=A/𝔪^k; M=κ²; Λ/(g²) | dim 1 ≤ k; 2=2; dim 1, order 2 | holds | none |
| ord_ρ = ord_(ρ⁻¹) §5.5 | R=O, Φ unramified | Gal(Φ(μ_(p^r))/Φ)≅(ℤ/p^r)× ∋ −1, inverts ρ(γ), fixes O-coefficients | holds only for O-coefficients | kept as stated; R-ramified Check |
| Strict inequality §5.6 | X_str=Λ/(g²), χ=1 | dim 1 ≤ order 2; χ⁻¹=χ at χ=1; H⁰(K∞,W)=0 | holds | none |
| Local codimension §6.2 | n=0, χ=1; ℚ_p vs CM count | E(Φ)⊗Φ≃Φ, dim 1; over ℚ_p the χ-part has dimension 2 (two embeddings) | holds | none |
| Rank bound branches §6.4 | ε=±, χ=1 | ε=+: χ=1∈Ξ^ε, no +1; ε=−: +1 | holds | none |
| E/K ⇒ h_K=1 (Conventions) | K=ℚ(√−23) | [K(j):K]=h_K=3, so no maximal-CM curve with K-rational j; §6.4 vacuous there, §4.6 applies | holds | Check in §6.4 |
| Class number example §0.1 | K=ℚ(√−23), p=5 | forms (1,1,6),(2,±1,3): h=3; −23≡2 mod 5, squares mod 5 are 0,1,4 → inert | holds | none |
| Rubin hypotheses §3.5 | K₀=H(E[p]), p=5, h=3 | [K₀:K]=3·24=72, prime to 5; LT character of order 24 nontrivial on the decomposition group | holds | Check |
| Tame H⁰ vanishing §§3.3, 5.2 | p=5 | Gal(Φ(F[π])/Φ) is cyclic of order 24 with no fixed vectors on F[π]; it meets the pro-5 group trivially | holds | now proved in §3.3 (cycle removed) |
| Unused hypotheses | 2 splits; E/K for §4.6 | not assumed anywhere in Layers 0–4 | none added | none |

The context check on Lean statements is vacuous: `Suggested.lean` has no statements.

## Dependency check

```
$ tauceti-roadmap --conf <conf> gate --depcheck packages/InertAnticyclotomicCMMainConjecture/README.md --name InertAnticyclotomicCMMainConjecture --order merge-order/ORDER.txt --movable
depcheck: 56 roadmaps, 648 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line. Suppliers cited, all on main or earlier in the merge order:

- on main: PadicMeasuresIwasawaAlgebras, EllipticCurves, ClassFieldTheory;
- earlier in the merge order: AnticyclotomicLocalUnits (218), NonordinaryCMSpecialValues (216), ComplexMultiplicationAndExplicitReciprocity (186), EulerSystemsAndKolyvaginSystems (112), SelmerIwasawaCohomology (59), ArithmeticGaloisDuality (48), LubinTateFormalModulesAndQuasiCanonicalLifts (earlier).

ModularIwasawaMainConjecturesPartII appears only under "Downstream consumers".

## Citation resolution

`roadmaps resolve` reports one lead: "AnticyclotomicLocalUnits §1.5: no roadmap AnticyclotomicLocalUnits on main or in an open pull request". This is not a defect. AnticyclotomicLocalUnits is a board package (`packages/AnticyclotomicLocalUnits/README.md`, accepted) at merge-order position 218, earlier than this roadmap, and its §1.5 exists there ("Signed anticyclotomic unit modules"). NonordinaryCMSpecialValues is likewise a board design at position 216; the NCM.k/node names cited are its plan's node ids (`packages/NonordinaryCMSpecialValues/design/plan.json`). Every other cross-roadmap section was read at the cited head or on main:

- SIC §§2.1–2.6, 2.10, 2.13, 2.19, 3.0–3.3, 3.10–3.12, 3.16;
- AGD §§R02.2.2–3, R02.4.2–4, D7.7.1–2;
- ESKS §§2.2, 8.1, 8.11, 8.25;
- PMIA §§1.7, 4.3, 4.5, 4.6;
- CMER §§4.1, 4.3;
- EllipticCurves Layers 1, 3, 4, 7;
- ClassFieldTheory Layers 6, 11–13.

## Sources

`sources.toml` records BKO21, AHII05, AHI06, RUB91 and BIL86, all `certified`:

- AHII05, AHI06, RUB91 and BIL86 were fetched by the sources service this run. RUB91 is a GDZ scan, recognised by OCR.
- BKO21's Caltech institutional URL redirects to a signed S3 URL that the service refuses. Its entry repeats the service's earlier fetch of the same file (sha256 77ff…790e, fetched 2026-10-23, licence `institutional`), which is the record AnticyclotomicLocalUnits already holds. It is the same key and the same work.

Locators were checked against the cached texts:

- BKO21: Theorems 6.1–6.2 at BKO21 lines 881–897 (p.962); §6.0.1 at line 823 onwards (p.961); footnote 3 at line 810 (p.960).
- AHII05: §2 at lines 87–128 (p.613); Theorems 3.6 and 4.1–4.2 at lines 214–262 (p.616); §5 at lines 300–345 (p.618).
- AHI06: Lemma 1.1.4 at line 236 (p.1006); Lemma 1.1.9 at line 364 (p.1009); Lemma 1.2.1 at line 415 (p.1010); Lemma 2.4.5 at line 1081 (p.1028); Corollary 2.4.6 at line 1124 (p.1029); Propositions 2.4.15–2.4.16 at lines 1234 and 1290 (pp.1032–1033).
- RUB91: Theorem 1.3 at line 216 (p.29); Theorem 4.1 at line 545 (p.37).
- BIL86: Théorème 3.24 at line 618 (p.364).

The cited works whose texts were not needed are dropped from the README: Arnold 2007 and Rubin's *Euler Systems*, which the reviewed routes no longer use. No `needs-references.toml` request is made. A temporary request for BKO21 written by the failed fetch was deleted once BKO21 was recorded; the file did not exist at the start of the job.

## Suspicious text

None found in the fetched texts or roadmap files.
