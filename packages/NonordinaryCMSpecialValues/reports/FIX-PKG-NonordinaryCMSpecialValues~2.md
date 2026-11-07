# FIX-PKG-NonordinaryCMSpecialValues~2

Repair round for the review `REV-PKG-NonordinaryCMSpecialValues` (three findings, all P3). Every finding was verified against the supplier heads and the cached sources before it was applied. Only `packages/NonordinaryCMSpecialValues/README.md` changed; `Suggested.lean`, `metadata.toml`, `sources.toml` and the `gaps` list of `design/plan.json` are untouched.

## REV-PKG-NonordinaryCMSpecialValues/F01 (P3) — applied

Verified at the head of ComplexMultiplicationAndExplicitReciprocity's open pull request: its `Suggested.lean` declares only `IsCanonicalGrossCharacter`, `canonicalGrossExistence`, `primitiveReducedForms`, `classPolynomial`, `classPolynomialHeightBound`; Layer 1 has §1.1 "Rational CM twisting" and §1.2 "Serre tensor, Lie and period comparisons" and no §1.3; the period pairing and the ideal-twist lattice `aΛ` are §1.2's target "CM period and de Rham pairings" and its period-lattice API bullet.

Old → new: the ten invented backticked names and the labels §1.1/§1.3 are replaced everywhere (scope line, the five supplier-contract bullets, the `*Needs:*` lines of §§0.4, 2.1, 2.2, 2.4, 3.1, 3.2, 3.4, 4.2, 4.3, 4.4, 5.2, 6.3 and the Dependencies of Layers 0, 2, 3, 4) by the supplier's section number and target title: §1.2 "CM period and de Rham pairings" (with its period-lattice comparison), §2.2 "Normalized idele and torsion dictionary", §3.2 "Exact ray-level field and generation criterion", §4.1 "The algebraic Hecke character of a CM abelian variety" / "One-dimensional CM components of the Tate module" / "Frobenius and infinity-type identities", §4.2 "Full elliptic CM L-factorization, including bad primes" / "CM induction and compatible-system comparison", §4.3 "Canonical Gross good reduction away from the discriminant". Only `IsCanonicalGrossCharacter` and `canonicalGrossExistence` remain backticked. Twenty-one replacements.

## REV-PKG-NonordinaryCMSpecialValues/F02 (P3) — applied

Verified at the head of AutomorphicLFunctionsAndLocalFactors' open pull request: none of the eight slugs occurs in its README; the numbered subsections AL.1.1.1, AL.1.3.1, AL.1.3.4, AL.1.3.5, AL.1.5.2, AL.1.6.2, AL.5.1.1, AL.5.3.2 exist with the titles the review gives, AL.1.6.2 states `Λ_H(ω,s) = W_H(ω)Λ_H(ω⁻¹,1−s)` with `W_H(ω)` taken from ArithmeticGaloisRepresentations §2.7 "Root-number product formula" (present at that roadmap's head, earlier in the merge order), AL.5.1.1 states `L^S = E_S L` and AL.5.3.2 the central zero from sign `−1`.

Old → new: every slug repointed as the review proposes, in the two contract bullets and the `*Needs:*` or proof-route text of §§0.3, 0.4, 1.1, 1.2, 1.3, 1.4, 2.8, 4.1, 4.2, 5.1, 5.3, 6.2, 6.4 (`global-epsilon-factor` → "the root number `W_H(ω)` of AL.1.6.2"). Layer-level mentions "AL.1, AL.5" in Dependencies lines stand; the gap section "Layer AL.1, Local epsilon factors and Gauss sums" is the title of AL.1.3 and is unchanged. Sixteen replacements.

## REV-PKG-NonordinaryCMSpecialValues/F03 (P3) — applied

(a) FINIS06: Proposition 3.4 is at line 815 on printed p.786 (page marker line 802), equation (14) at line 902 and the vanishing of `b_ℓ` at lines 911–917, both on printed p.788 (page marker line 880). §4.1 now reads "Proposition 3.4, p.786, and equation (14) with the vanishing of `b_ℓ`, p.788, FINIS06 lines 902–917".

(b) `Completed/ArithmeticDirichletSeries/README.md` line 190 is "Layer 3: local factors and Euler products"; §0.3's `*Needs:*` and Layer 0's Dependencies already named it. The contract bullet now lists Layer 3 (local factors and Euler products) and Layer 5.

(c) `TauCetiRoadmap/ClassFieldTheory/README.md` Layer 13 (line 1799, table at 594) supplies ring class fields of quadratic orders, `Gal ≅ Pic O` and principal Artin symbols, and contains no occurrence of "anticyclotomic"; §0.2 and §0.6 derive the `Z_p` and `Z_l` quotients here from `Pic(O_c)`. The contract bullet now says so.

(d) FINIS06 lines 1571–1584: `R` is the `O_K`-module of relations `Σ ι_p̄(x_ν)α′_ν = 0` among the second components of `β_ν = (α_ν, α′_ν)`. §4.4 now reads "the `O_K`-relations among the `p̄`-components `α′_ν` of the `β_ν = (α_ν, α′_ν)`", with the locator lines added. No Check of §4.4 used the old wording.

## Checks

- Elaboration: `lake env lean` on `packages/NonordinaryCMSpecialValues/Suggested.lean` from the content checkout: exactly three `declaration uses 'sorry'` warnings (lines 127, 137, 163), no errors, no other diagnostic, exit code 0, under three seconds. The file was not changed this round. Before the run, `lake build --no-build` on its two `TauCeti.*` imports (`TauCeti.NumberTheory.NumberField.Global.HeckeCharacter.Ideal`, `TauCeti.NumberTheory.NumberField.Global.HeckeCharacter.FiniteComponent`) answered `All targets up-to-date (7973 jobs)`, so no targeted build was needed; the imports were kept, since they carry the headline statements on Tau Ceti's Hecke-character carriers.
- Binder check: a scratch copy of the file with `#check @name` for all eleven declarations appended inside the namespace elaborated; the ten printed types agree with the worker's `signatures.md` and with the README statements (`centralValue_parity_dichotomy` keeps `IsCMField`, `Algebra.IsQuadraticExtension ℚ K`, `Fact p.Prime`, `p ≠ 2`, the inert place, `IsEquivariantTypeOneZero`, the unramified and odd-order hypotheses on `ν` and the uniformizer normalisation; the two Rohrlich theorems keep algebraicity, not-both-zero, the exponent ranges and the `P`-support of `q`). The eleventh, `Rohrlich.factPrime`, is a section-local instance with a real body and is not visible outside its section, as intended; nothing changed.
- Direction gate (`gate --depcheck … --movable`): `depcheck: 242 roadmaps, 2370 edges, 0 problem(s)`; no UPWARD, CYCLE or `moved:` line.
- `roadmaps resolve` on the edited README: no cross-roadmap citation and no Lean name found nowhere (checked against main and the 460 open roadmap pull requests at their heads).
- Supplier heads re-read this round: ComplexMultiplicationAndExplicitReciprocity (§1.2 "CM period and de Rham pairings" with the period-lattice comparison, §2.2 "Normalized idele and torsion dictionary", §3.2 "Exact ray-level field and generation criterion", §4.1's three targets, §4.2's two targets, §4.3's "Canonical Gross good reduction away from the discriminant"; its `Suggested.lean` declares `IsCanonicalGrossCharacter` and `canonicalGrossExistence` and no other name this README cites); AutomorphicLFunctionsAndLocalFactors (AL.1.1.1, AL.1.3.1, AL.1.3.4, AL.1.3.5, AL.1.5.2, AL.1.6.2 with `Λ_H(ω,s) = W_H(ω)Λ_H(ω⁻¹,1−s)`, AL.5.1.1, AL.5.3.2 present; none of the eight old slugs occurs); ArithmeticGaloisRepresentations §2.7 "Root-number product formula" present at its open head, position 42 of the merge order against 324 for this roadmap. On main: `TauCetiRoadmap/ClassFieldTheory/README.md` Layer 13 (quadratic-order ring class fields, no occurrence of "anticyclotomic"); `Completed/ArithmeticDirichletSeries/README.md` Layer 3 "local factors and Euler products" and Layer 5. FINIS06: Proposition 3.4 at line 815 (page 20, printed p.786), equation (14) at line 902 and the vanishing of `b_ℓ` at lines 911–917 (page 22, printed p.788), Lemma 4.5's relation module at lines 1571–1577.
- Residue grep for the ten supplier names and eight slugs over README, `Suggested.lean`, `metadata.toml`, `sources.toml`: none. The remaining backticked slugs (`primitive-division`, `tate-module-comparison`, `lt-character`, `unramified-honda-comparison`, `elliptic-honda-comparison`) are LubinTateFormalModulesAndQuasiCanonicalLifts board-design targets the review verified.
- No machine path in the README, the Lean file or this report. No gate failures were listed for this round.

## Adversarial pass on the changed statement

Only F03(d) changes a mathematical statement; the other edits are locators and citation labels.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §4.4 Lemma 4.5, relation module | `r = 1`, `α′_0 ≠ 0`; `r = 1`, `α′_0 = 0`; `r = 2`, `β_0 = (1,1)`, `β_1 = (2,1)` | `R = 0`, `A = E`, closure of `[α′_0]E[p̄^∞]` is `E`; `R = O_K`, `A = 0`, image finite; `R = {(x,−x)}`, `A = diagonal`, image `{(P,P)}` dense in the diagonal, while relations among the full `β_ν` give `R = 0`, `A = E²`, which the closure does not contain | the `α′_ν` reading is the true one; the old wording fails on the third instance | applied (d) |

## For the maintainer

- `design/plan.json` carries the same ten supplier names and eight slugs inside its `nodes` catalogue (23 occurrences); this job may edit only its `gaps` list, which contains none of them, so they stand there until the catalogue is regenerated.
- The contract now mentions ArithmeticGaloisRepresentations §2.7 "Root-number product formula" as the owner AL.1.6.2 names for `W_H(ω)`; it is earlier in the merge order and adds no new `*Needs:*` line.
- Ownership against open pull requests: the review's ownership search was not repeated; this round adds no construction.
- An earlier run of this round made the same edits but was refused by the worker's disk precheck (11 GB free against the 20 GB its targeted build wants). This run re-ran every check with 65 GB free: the targeted build is a no-op (both object files present and up to date) and the file elaborates as recorded above.
