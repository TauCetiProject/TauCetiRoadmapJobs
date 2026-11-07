# FIX-PKG-InertAnticyclotomicCMMainConjecture~2: resolution of REV-PKG-InertAnticyclotomicCMMainConjecture

All four findings were verified against the cited sources, the supplier heads and the pins, and all four were right. Files changed: `packages/InertAnticyclotomicCMMainConjecture/README.md` and `packages/InertAnticyclotomicCMMainConjecture/Suggested.lean` (module docstring only). `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged; no gap was added or removed.

## REV-PKG-InertAnticyclotomicCMMainConjecture/F01 (P3) — applied

Verified at the ComplexMultiplicationAndExplicitReciprocity open head: §4.1 titles its three targets in bold prose only, §4.3 backticks only `IsCanonicalGrossCharacter` and `canonicalGrossExistence`, and its `Suggested.lean` declares exactly those two plus `primitiveReducedForms`, `classPolynomial`, `classPolynomialHeightBound`. Changed: supplier contract "§4.1 (`cmHeckeCharacter`, `cmTateComponents`, `cmFrobeniusIdentities`)" → "§4.1 (the algebraic Hecke character of a CM abelian variety; one-dimensional CM components of the Tate module; Frobenius and infinity-type identities)"; "`canonicalGrossGoodReduction`" → "canonical Gross good reduction away from the discriminant"; §1.3 route "§4.1, `cmFrobeniusIdentities`" → "§4.1, Frobenius and infinity-type identities". No other occurrence of the four names exists in the README.

## REV-PKG-InertAnticyclotomicCMMainConjecture/F02 (P3) — applied

Verified: AnticyclotomicLocalUnits §4.2 (board package) is stated for ν of conductor l^m with "exact order l^r, r≥1, m=r+1", and no clause treats ν=1; BKO21 line 399 says the trivial-ν case is Rubin's elliptic unit, and lines 435–452 define ξ_ν by a composite that at m=0 has L_0=K and M_(n,0)=H(E[p^(n+1)]). NonordinaryCMSpecialValues NCM.1/normalized-zeta-class admits moduli "supported on f, p and an auxiliary split l", so f pⁿ is admissible. Changed §2.1: ξ is now defined here as the image of the normalised classes of moduli f pⁿ under the §4.2 arrows with L_r replaced by K (untwist, corestriction to H(E[p^(n+1)]), localisation above p, augmentation over Gal(H/K), Δ-invariants, Kummer comparison), for every inert CM datum; "with its separately defined trivial case" deleted; the first API bullet and first Check reworded for the modulus; one Check added (an auxiliary split prime l inserted into the modulus changes δ by the Euler factors at λ, λ̄). Changed §2.2 route: AnticyclotomicLocalUnits §4.4 is the template; the values come from NCM.1/elliptic-reciprocity at K(f pⁿ) with g=f and the dual-exponential form of Wiles reciprocity (ALU §4.3, stated for every element of U∞*⊗R); NCM.1/elliptic-reciprocity added to §2.2's *Needs:* and to the Layer 2 external inputs. The Scope and ownership clause on AnticyclotomicLocalUnits now records that the trivial-auxiliary-character instance is §2.1 here. The other mention of the ν=1 normalisation (§4.5's route) refers to §2.1 and needed no change.

## REV-PKG-InertAnticyclotomicCMMainConjecture/F03 (P3) — applied

Verified at BKO21 line 293 (p.949: δ_χ(x^β)=χ(β)⁻¹δ_χ(x)), line 478 and line 827 (L(ϕχ,1)/Ω, no bar) and line 841 (L_p(χ)=L(ϕχ,1)/(Ω·δ_(χ⁻¹)(v_ε))). From ξ=L_p·v_ε and the inverse covariance, δ_(χ⁻¹)(ξ)=L_p(χ)δ_(χ⁻¹)(v_ε)=L(ϕχ,1)/Ω, so δ_χ(ξ)=L(ϕχ⁻¹,1)/Ω=L(ϕ̄χ,1)/Ω, which is the README's form and agrees with NCM.1/elliptic-reciprocity and ALU §4.4. Changed §2.2: one sentence added after the locator recording that BKO21 prints L(φχ,1)/Ω at both places and that its inverse covariance (p.949) and interpolation formula (p.961) force L(φχ⁻¹,1)=L(φ̄χ,1). §2.5 already reproduces line 841 with conjugate(φχ) and needed no change; no other place in the README prints the unbarred form.

## REV-PKG-InertAnticyclotomicCMMainConjecture/F04 (P3) — applied

Verified at the pins: `WeierstrassCurve.Affine.selmerGroupA` is defined at TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/SelmerGroupA.lean line 144 (namespace at line 91), `WeierstrassCurve.Affine.selmerGroup₂` at SelmerGroup.lean line 104 in the same directory, and Mathlib's `IsDedekindDomain.selmerGroup` at Mathlib/RingTheory/DedekindDomain/SelmerGroup.lean line 161 (namespace `IsDedekindDomain` opened at line 69, `HeightOneSpectrum` closed at line 153). Changed: the Lean module docstring "the only pinned Selmer group is …selmerGroup₂" → the three names, none the p-primary Galois-cohomological carrier; README Tau Ceti contract now names both 2-descent groups; the Mathlib contract gained one sentence naming `IsDedekindDomain.selmerGroup` with its file. The not-statable verdict is unchanged.

## Checks

- **Elaboration.** `lake env lean` on `packages/InertAnticyclotomicCMMainConjecture/Suggested.lean` from the content checkout (Mathlib 1b1ccf4b, Tau Ceti 2fd255d9 per the manifest): exit 0, no output. The file declares nothing (docstring and empty namespace), so there is no `#check @name` comparison to make; only the docstring changed.
- **Depcheck** (after all edits):

      depcheck: 242 roadmaps, 2481 edges, 0 problem(s)

  No UPWARD, CYCLE or moved line. The edits added no supplier: NCM.1/elliptic-reciprocity (NonordinaryCMSpecialValues, position 216) was already cited in §3.1 and §4.5.
- **Resolve.** `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere. The tool does not check names outside TauCetiRoadmap on this host; the three Selmer names were opened at the pins by hand (files and lines above).
- **Sources.** No source added; the five manifest entries are unchanged. BKO21 was read at lines 285–309, 396–480, 821–844.
- **Ownership against open work.** The trivial-auxiliary-character projected class is stated by no roadmap on main, at the sibling heads given in the brief, or in the board packages: AnticyclotomicLocalUnits §4.2 excludes it explicitly (r≥1), NonordinaryCMSpecialValues NCM.1 supplies only the global classes and their reciprocity. This roadmap owns it as the instance its primitive class needs. Open pull requests whose files the brief does not give were not checked.
- **Gate failures listed in the brief:** none.

## Adversarial pass on changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §2.1 composite at ν trivial (BKO21 lines 435–452 with m=0) | p=5, n=0 | L_0=K, M_(0,0)=H(E[5]); R[Gal(L_0/K)]=R, evaluation arrow identity; Δ-average divides by p²−1=24, prime to 5 | arrows well defined, no division by p | none |
| §2.1 modulus admissibility (NCM.1/normalized-zeta-class) | modulus f·5ⁿ | support {f, 5}, no auxiliary l: within "f, p and an auxiliary split l" | admissible | none |
| §2.1 new Check: auxiliary prime inserted | K=ℚ(√−23), l=3 (split since −23≡1 mod 3), p=5 | factors 1−φ̄(λ)/3 with |φ̄(λ)|=√3: absolute value ≥1−1/√3>0, nonzero; product ≠1 since |φ̄(λ)/3|=1/√3≠0 | class differs from ξ | Check added |
| §2.2 χ=1 value from elliptic-reciprocity | p=5 | L_(pf)(φ̄,1)=L(φ̄,1)(1−(−5)/25)=(6/5)L(φ̄,1); δ_1=(6/5)δ (ALU §1.4) gives δ(ξ)=L(φ̄,1)/Ω | agrees with §2.2 statement and first Check | none |
| §2.2 local factors at f | prime 𝔮∣f | φ̄χ ramified at 𝔮 (χ unramified outside p, φ̄ of conductor f): factor 1 | L_(pf)(φ̄χ,1)=L(φ̄χ,1) for χ≠1 | none |
| §2.2 convention sentence (F03) | χ of order 5, ζ=χ(γ) | δ_(χ⁻¹)(L_p v_ε)=L_p(χ)δ_(χ⁻¹)(v_ε); with line 841, δ_(χ⁻¹)(ξ)=L(φχ,1)/Ω; replacing χ by χ⁻¹: δ_χ(ξ)=L(φχ⁻¹,1)/Ω=L(φ̄χ,1)/Ω since (φχ⁻¹)∘c=φ̄χ and L(ψ∘c,s)=L(ψ,s) | the literal line 827 value L(φχ,1)/Ω is the ζ↦ζ⁴ conjugate, not equal in general | sentence added |
| §2.5 after F03 | same χ | L(conjugate(φχ),1)=L(φ̄χ̄,1)=L(φχ,1) by composing with c: reproduces line 841 | consistent | none |
| F04 docstring | the three pinned declarations | selmerGroup₂, selmerGroupA: subgroups of W.M (2-descent, Kummer image mod squares); IsDedekindDomain.selmerGroup: subgroup of K/n by valuations outside S; none involves p-primary Galois cohomology | not-statable verdict stands | docstring, README |

## For the maintainer

No name another roadmap cites changed; this roadmap's `Suggested.lean` still declares nothing. Supplier-side notes recorded as source issues by the review (BKO21 p.953/p.961 unbarred character, AHII05 Lemma 2.1.2 for 1.2.1) are not this package's to edit; the BKO21 one is now recorded in §2.2's prose.
