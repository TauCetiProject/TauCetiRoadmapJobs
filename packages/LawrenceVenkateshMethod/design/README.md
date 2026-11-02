# Lawrence–Venkatesh: p-adic period maps and finiteness of rational points

This design identifies the existing owners of the entire brief. It proposes consolidating
`LawrenceVenkateshMethod` into the existing Lawrence–Venkatesh roadmap family. It introduces
no independent mathematical layers. This is a design disposition for independent review,
not a second package and not a claim that the mathematics has been implemented.

The brief asks for the curve period method, its arithmetic finiteness input, dimension and
monodromy estimates, and the S-unit, Mordell and Lawrence–Sawin applications. Those targets
already occur in three accepted plans:

| Existing owner | Mathematical responsibility | Accepted review |
| --- | --- | --- |
| [MordellLawrenceVenkatesh](MordellLawrenceVenkatesh.md) | LV.0–LV.11: semilinear algebra, arithmetic finiteness, curve period maps, S-units, Kodaira–Parshin and Mordell | REV-DESIGN-LV~2, 6 October 2026 |
| [MordellLawrenceVenkateshPartII](MordellLawrenceVenkateshPartII.md) | M2.0–M2.10: general compatible systems, coefficient groups, higher-dimensional period non-density, balanced filtrations and hypersurface finiteness | REV-DESIGN-MordellLawrenceVenkateshPartII, 19 October 2026 |
| [SheafConvolutionOnAbelianVarieties](SheafConvolutionOnAbelianVarieties.md) | SC.0–SC.9: convolution categories and monodromy, exceptional degrees, simultaneous twists and torsion-orbit selection | REV-DESIGN-SheafConvolutionOnAbelianVarieties, 19 October 2026 |

PROTOCOL §§9 and 15 require a restructuring proposal when a brief overlaps existing work,
and forbid a second owner for that work. There was no pre-existing layer assignment for this
new identifier. Accordingly its definition has an empty `stages` array, and its packet has
empty `scope`, `nodes` and `coverage` arrays. The sixteen import dispositions below preserve
the complete brief without creating artificial layers whose sole content is someone else's
result. The proposed consolidation has **not** been applied. An independent reviewer must
approve this disposition or identify a specific uncovered target before any new layer is
assigned. The definition remains draft.

## Conventions and the proof architecture

K denotes a number field; S includes the archimedean places when S-integers are used. The
finite places above the cohomological prime p are excluded from unramifiedness assertions
unless a stronger local assertion is stated. Positive cohomological Weil weights use geometric
Frobenius. Arithmetic Frobenius in field-theoretic Chebotarev and the coefficient-field
Frobenius in a semilinear crystalline space require their existing comparison conventions.
They are not one unqualified operator.

For a good smooth proper family, horizontal transport fixes the underlying crystalline space
on a residue disk and lets its Hodge filtration move in a flag variety. Finitely many global
semisimple representation types impose finitely many centralizer-orbit conditions on these
filtrations. Monodromy bounds the period-image dimension from below. On a curve, the strict
dimension inequality and convergence on a compact disk yield finitely many points. The
nonsemisimple fibres require their own Hodge-weight and general-position argument. The
Kodaira–Parshin family and Frobenius orbit estimates supply the Mordell application.

For hypersurface parameter spaces, proper analytic subsets are insufficient: they can be
Zariski dense. The existing Part II therefore uses the stronger complex Ax–Schanuel input,
its p-adic transfer, and codimension estimates for nonsemisimple filtration types. The
convolution roadmap supplies enough simultaneous monodromy to meet the numerical
inequalities. Finally, arithmetic non-density on each nontranslation family is converted to
finiteness of translation classes by the parameter-space, stabilizer and descent arguments.
These are different steps, all with existing owners.

## Imported targets and their boundaries

Each item is an import contract, not a new declaration. Full definition APIs, discriminating
unit tests, intermediate prerequisites, proof outlines, planets and unresolved obligations
remain in the cited owner's packet and reader. The machine-readable counterpart is
`targetDisposition` in this design's packet. LV locators refer to arXiv v3 pages, LS locators
to arXiv v5 pages, F to printed article pages, and BT to author-manuscript pages.

### 1. Faltings finiteness for semisimple Galois representations

Fix a number field K, a rational prime p, a finite set T of finite places containing the places above p, rank d and a nonnegative integral weight w. Semisimple continuous representations of G_K on Q_p^d, unramified outside T, with integer Frobenius characteristic polynomials and pure weight w at every place outside T, have finitely many isomorphism classes. Use geometric Frobenius for the positive weight convention.

Owner nodes: `MordellLawrenceVenkatesh:LV.1/faltings-finiteness`, `MordellLawrenceVenkatesh:LV.1/frobenius-test-set`, `MordellLawrenceVenkatesh:LV.1/weil-polynomials-finite`.

Source: LV, Lemma 2.3, pp. 9–10.

Fixed Hodge–Tate weights or a conductor bound alone are not the stated theorem. ArithmeticGaloisRepresentations:R01.5 supplies recognition; the finite-test/Weil-polynomial arithmetic argument is already owned by LV.1.

### 2. Semilinear Frobenius centralizers

For an automorphism sigma of E of finite order e with fixed field F and an invertible sigma-semilinear map phi on a d-dimensional E-space, the F-dimension of its E-linear commuting endomorphisms equals the E-dimension of the centralizer of phi^e and is at most d squared.

Owner nodes: `MordellLawrenceVenkatesh:LV.0/semilinear-centralizer`, `MordellLawrenceVenkatesh:LV.0/semilinear-centralizer-finrank`, `MordellLawrenceVenkatesh:LV.0/semilinear-centralizer-unramified`.

Source: LV, Lemma 2.1, p. 9.

The first centralizer is an F-vector space. A coefficient-field-linear centralizer of a semilinear map is not silently substituted.

### 3. Families, good models and horizontal transport

For a smooth proper family with locally free cohomology and Hodge quotients over an S-integer model, choose a good place v above p>2 with K_v/Q_p unramified and an integral basepoint. Horizontal transport on its residue disk identifies the crystalline space and its semilinear Frobenius while the Hodge filtration varies. The abelian-by-finite H^1 setting retains its finite coefficient algebra and polarization; general geometric cohomology belongs to the compatible-system owner.

Owner nodes: `MordellLawrenceVenkatesh:LV.2/abelian-by-finite-family`, `MordellLawrenceVenkatesh:LV.2/good-model`, `MordellLawrenceVenkatesh:LV.2/residue-disk`, `MordellLawrenceVenkatesh:LV.2/gauss-manin-transport-padic`, `MordellLawrenceVenkatesh:LV.2/crystalline-frobenius-on-fibres`, `MordellLawrenceVenkateshPartII:M2.0/geometric-cohomology-system`, `MordellLawrenceVenkateshPartII:M2.0/crystalline-residue-fibres`.

Source: LV, §§3.1–3.3, pp. 15–17.

General smooth-proper cohomology is not reduced without justification to abelian H^1. PadicHodgeTheory and the cohomology-comparison owners provide the geometric comparisons.

### 4. Local p-adic and complex period maps

Transport the filtration on each fibre back to a fixed cohomology space to obtain a flag-valued analytic map. For abelian-by-finite H^1 its target is the coefficient-algebra Lagrangian flag variety. Its complex counterpart and p-adic counterpart are evaluations of common algebraic-coefficient horizontal power series.

Owner nodes: `MordellLawrenceVenkatesh:LV.3/padic-period-map`, `MordellLawrenceVenkatesh:LV.3/complex-period-map`, `MordellLawrenceVenkatesh:LV.3/period-maps-common-series`, `MordellLawrenceVenkateshPartII:M2.0/hodge-deligne-system`.

Source: LV, §3.4, pp. 18–19.

RelativeFarguesFontaine is not required merely because the word period occurs: these maps use Gauss–Manin transport and crystalline comparison, not relative Fargues–Fontaine modifications.

### 5. Lower bound on the period-image closure

The complex Zariski closure contains the monodromy orbit of the base filtration. Common power series identify the dimensions of the complex and p-adic closures. Full monodromy gives density in the appropriate Lagrangian period space in the abelian-by-finite setting.

Owner nodes: `MordellLawrenceVenkatesh:LV.3/period-maps-common-series`, `MordellLawrenceVenkatesh:LV.3/padic-period-image-dense`.

Source: LV, Lemmas 3.1–3.3, pp. 18–19.

A positive-dimensional period image is not itself a finiteness theorem; the bad arithmetic loci must have smaller dimension.

### 6. From finitely many local types to finite points on a curve

On a curve residue disk, suppose the relevant field/representation pairs run through finitely many local isomorphism classes. Their filtrations lie in finitely many Frobenius-centralizer orbits. If the dimension of the linear-iterate centralizer is smaller than the period-image closure, the point set is finite. In relative abelian dimension d>=1, full monodromy gives period dimension [L_0:K_v]d(d+1)/2 and centralizer dimension at most 4d^2; local degree at least 8 suffices.

Owner nodes: `MordellLawrenceVenkatesh:LV.3/padic-period-preimage-finite`, `MordellLawrenceVenkatesh:LV.4/finiteness-criterion`.

Source: LV, Proposition 3.4 and proof, pp. 19–20; factorwise application in §6, Lemma 6.2, p. 31.

Compact residue disks and convergent restricted series supply the finite-zero step. In higher dimension a proper analytic locus can still be Zariski dense.

### 7. The S-unit equation over a number field

For any number field K and finite S containing its archimedean places, the set of t in O_(K,S)^× for which 1-t also lies in O_(K,S)^× is finite. The proof uses the Legendre/Kummer reductions and the curve period criterion.

Owner nodes: `MordellLawrenceVenkatesh:LV.6/s-unit-theorem`.

Source: LV, Theorem 4.1, p. 20; proof in §4, pp. 20–24.

Finite generation of the unit group is already library arithmetic; it does not prove finiteness of solutions of this additive equation. Effective enumeration remains EffectiveDiophantineMethods:ED.2.

### 8. The abelian-by-finite rational-point criterion

For a smooth projective geometrically connected curve of genus at least two and a positive-relative-dimension abelian-by-finite family with full monodromy and good S-integer model, a friendly good place v gives finiteness of the rational points whose finite fibre has size_v less than 1/(d+1). The owner supplies the small-orbit definition and the general-position/Hodge-weight argument controlling nonsemisimple fibres.

Owner nodes: `MordellLawrenceVenkatesh:LV.7/proposition-5-3`.

Source: LV, Proposition 5.3, p. 26, restated p. 28; proof in §6, pp. 28–34.

Faltings finiteness applies to semisimplifications; one cannot assume every geometric fibre representation is semisimple to finish this application.

### 9. Mordell via the Kodaira–Parshin family

For every number field K and smooth projective geometrically connected K-curve Y of genus at least two, Y(K) is finite. The existing proof route constructs Kodaira–Parshin families with full monodromy, chooses a friendly auxiliary place and bounds the small Frobenius orbits uniformly.

Owner nodes: `MordellLawrenceVenkatesh:LV.8/kodaira-parshin-family`, `MordellLawrenceVenkatesh:LV.10/kodaira-parshin-full-monodromy`, `MordellLawrenceVenkatesh:LV.11/friendly-auxiliary-place`, `MordellLawrenceVenkatesh:LV.11/small-orbit-count`, `MordellLawrenceVenkatesh:LV.11/size-bound`, `MordellLawrenceVenkatesh:LV.11/faltings-theorem`.

Source: LV, Theorem 5.4 and proof, pp. 26–28; family and monodromy assertions cited there from §§7–8.

The other Faltings/Parshin route in HeightsRationalPointsAndObstructions:RP.4 is not a new copy of this proof. This job assigns no additional Mordell node.

### 10. General compatible coefficient systems

Compatible Betti, etale, filtered de Rham and crystalline realizations, with integral and polarized predicates recorded separately, provide the general geometric coefficient-system language. Arithmetic finiteness for the coefficient normalizer is a separate G-conjugacy target; finite GL-conjugacy classes alone do not discharge it.

Owner nodes: `MordellLawrenceVenkateshPartII:M2.0/hodge-deligne-system`, `MordellLawrenceVenkateshPartII:M2.0/integral-polarized-system`, `MordellLawrenceVenkateshPartII:M2.0/geometric-cohomology-system`, `MordellLawrenceVenkateshPartII:M2.1/rational-orbit-frobenius-polynomials`, `MordellLawrenceVenkateshPartII:M2.2/finite-global-g-types`.

Source: LS, §5, Definitions 5.2–5.5, pp. 40–42; Lemma 5.49, pp. 61–62.

The accepted owner records coefficient comparison, rational orbit splitting and disconnected-group descent obligations. They remain there; importing a target does not close them.

### 11. Higher-dimensional period inverse-image non-density

For a smooth geometrically connected positive-dimensional base with a polarized integral compatible system, the inverse image on a fixed p-adic residue disk of an algebraic subset of the monodromy period orbit of codimension at least the base dimension is not Zariski dense. The existing general arithmetic application works over Q, with Weil restriction for number-field hypersurface parameters.

Owner nodes: `MordellLawrenceVenkateshPartII:M2.3/complex-period-codimension`, `MordellLawrenceVenkateshPartII:M2.3/local-analytic-nullstellensatz`, `MordellLawrenceVenkateshPartII:M2.3/padic-period-nondensity`.

Source: LS, Theorem 6.4 and proof, pp. 65–67.

This uses Ax–Schanuel (BT Theorem 1.1), not just definability. The owner must combine finitely many affinoid components; a componentwise assertion about an infinite union would be insufficient.

### 12. Strong balance and nonsemisimple filtration bounds

The Frobenius action must preserve equal-sized monodromy index classes and each Frobenius orbit must meet at least c such classes. Together with the uniform adjoint Hodge profile and both numerical inequalities of LS Theorem 8.17, this yields non-density of integral points without assuming actual fibres semisimple. With d the base dimension, h^a the adjoint Hodge numbers, t=rank H and T the cumulative adjoint Hodge polygon, the inequalities are sum_(a>0) h^a >= (d+dim H)/c and sum_(a>0) a h^a > T((d+dim H)/c)+T((h^0-t)/2+(d+dim H)/c). The arguments of T must lie in its domain.

Owner nodes: `MordellLawrenceVenkateshPartII:M2.4/strongly-balanced-monodromy`, `MordellLawrenceVenkateshPartII:M2.6/integral-points-nondense`.

Source: LS, Definition 6.6, p. 68; Theorem 8.17, pp. 83–84.

The nonsemisimple types and balanced-filtration estimates stay in M2.5–M2.6; the brief does not justify dropping either numerical inequality.

### 13. Lawrence–Sawin big monodromy

For a primitive smooth ample hypersurface in an abelian variety of dimension n>2, convolution supplies a normal classical group in its distinguished representation: SL in the nonsymmetric case, Sp for even n in the inversion-symmetric case, and SO for odd n. Dimension-three exceptional normalized degrees must be excluded. Nonconstant-up-to-translation families then give product monodromy for generic simultaneous character twists, and torsion characters can be chosen uniformly across conjugates for the arithmetic application, choosing their order prime different from the good-reduction residue characteristic.

Owner nodes: `SheafConvolutionOnAbelianVarieties:SC.6/classical-monodromy`, `SheafConvolutionOnAbelianVarieties:SC.7/generic-big-monodromy`, `SheafConvolutionOnAbelianVarieties:SC.8/uniform-orbit-monodromy`, `MordellLawrenceVenkateshPartII:M2.4/torsion-orbit-strong-balance`.

Source: LS, Theorem 3.5, p. 21; Theorem 4.7, pp. 33–34; Corollary 4.10, pp. 36–37; Lemma 6.8, pp. 68–69.

Convolution definitions, quotient categories, fibre functors, representation classification and exceptional-degree combinatorics all remain with SC.0–SC.8. They are not recreated as local period theory.

### 14. Shafarevich finiteness for hypersurfaces in abelian varieties

Fix a number field K, an abelian variety A/K of dimension n>=4 with good reduction outside a finite S, and an ample Neron–Severi class phi. Smooth hypersurfaces of class phi with smooth closure in the abelian S-integer model form finitely many A(K)-translation classes. The existing extension also covers n=3: primitive divisors exclude equality with the exceptional normalized degrees, while all divisors require exclusion of divisibility. The n=2 theorem has a separate curve-Shafarevich proof.

Owner nodes: `MordellLawrenceVenkateshPartII:M2.10/good-reduction-primitive-hypersurface`, `MordellLawrenceVenkateshPartII:M2.10/primitive-shafarevich-finiteness`, `MordellLawrenceVenkateshPartII:M2.10/stabilizer-isogeny-reduction`, `MordellLawrenceVenkateshPartII:M2.10/rational-translation-descent`, `MordellLawrenceVenkateshPartII:M2.10/hypersurface-shafarevich-finiteness`, `MordellLawrenceVenkateshPartII:M2.10/abelian-surface-hypersurfaces`.

Source: LS, Theorem 1.1, p. 1; Theorem 9.2 and Corollary 9.3, pp. 85–88; Theorems 9.4–9.6, p. 88.

The quotient is by translations, not hypersurface isomorphism or literal equality. Weil restriction and dense-open resolution adapters already belong to M2.10. Non-density alone is not the final finiteness argument.

### 15. Original arithmetic finiteness provenance

Hermite–Minkowski bounds the extensions of fixed degree unramified outside a finite set. Finitely many Frobenius tests and bounded Weil polynomials then give the arithmetic finiteness input. The original abelian-variety isogeny and Shafarevich statements retain their separate owner.

Owner nodes: `MordellLawrenceVenkatesh:LV.1/frobenius-test-set`, `MordellLawrenceVenkatesh:LV.1/faltings-finiteness`, `FaltingsFinitenessAndIsogenyTheorems:R28.5/shafarevich-finiteness`.

Source: F, §3, Lemma 4, p. 357; §5, Satz 5 and proof, pp. 362–363; Satz 6, p. 363.

Satz 5 is the abelian-variety isogeny statement; the general representation formulation is LV Lemma 2.3. These are not interchangeable citations.

### 16. Functional transcendence input for the higher-dimensional branch

For a pure polarized integral variation on a smooth complex algebraic base, an analytic component of the intersection of the lifted-period graph with an algebraic subset of the base times compact dual, of smaller codimension than the sum of the two expected codimensions, projects into a proper weak Mumford–Tate subvariety.

Owner nodes: `MordellLawrenceVenkateshPartII:M2.3/complex-period-codimension`.

Source: BT, §1.2, Theorem 1.1, author PDF pp. 1–2.

The result used by LS Lemma 6.3 and Theorem 6.4 is stronger than definability. This audit verifies the input statement and its use, not the proof of Ax–Schanuel.

## Baseline and current-upstream screen

The pinned baseline is Tau Ceti `f790474821cf4256814db967cb154e7af3d0c369` with
Mathlib `082e2d37e8b0463410cdb532e111cd43d5a66174`. The reviewed library audit has
no entry for the proposed new identifier. Its arithmetic-Galois and heights entries were
read before choosing ownership: generic representation recognition does not supply the
Faltings finiteness argument, and the height roadmap's Parshin–Shafarevich route is a
different route to a theorem already assigned there.

Three Mathlib statements were read at the pin in
`Mathlib/RingTheory/DedekindDomain/SInteger.lean`:

| Declaration | Exact available interface | Consequence for this design |
| --- | --- | --- |
| `Set.unit` | For a Dedekind domain R and its fraction field K, a subgroup of Kˣ whose elements have valuation one outside S | Reuse the existing S-unit carrier |
| `Set.unit_valuation_eq_one` | Every element of that subgroup has valuation one at a height-one prime outside S | Reuse the valuation characterization |
| `Set.unitEquivUnitsInteger` | Multiplicative equivalence with the units of the S-integer subalgebra | Reuse the ring/group dictionary |

None asserts finiteness of the additive S-unit equation. The current Tau Ceti declaration
`Set.unit_fg` in `RingTheory/DedekindDomain/SInteger/Unit.lean` was also read: it needs
finite S and finite generation of the empty-set unit group, and concludes finite generation
of the S-unit group. This current-library observation is kept separate from the three pinned
Mathlib baseline citations. An infinite finitely generated group can have a finite solution
set to the additional equation, so the two finiteness statements have different content.

The current read-only upstream checkout was screened at commit
`0d144d044dacebca17b654695b6f1ad58f159b27`, with current Tau Ceti
`a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The screen included the nine newer
roadmap directories named in WORKERS and the Completed roadmaps. GlobalNumberFields
and Chebotarev were read as the two upstream style and boundary examples, together with
prefixes of their Suggested files. Their arithmetic carriers, Frobenius classes and qualitative
prime-existence interfaces remain existing upstream work. Relevant modular-period and
S-unit declarations were inspected rather than interpreting a name match as a supplier:
ModularForms' period pairing into the dual of modular symbols does not supply a moving
crystalline Hodge filtration. This is a scope screen, not a claim to have verified all upstream
proofs or read every upstream file.

The local link screen found no reference to `LawrenceVenkateshMethod`. Fifteen links into
LV and one affine-group overlap were examined. They preserve the current owners for
Legendre families, local fields, global-to-local degrees, Artin normalizations, curve genus
and affine permutation groups. No local link contained the Part II or convolution identifier.
This proposal introduces no stage edges and no dependency cycle.

## Inputs, consumers and checks on the disposition

The brief's proposed input list needs precise routing. PadicHodgeTheory:R06.5 supplies the
representation-theoretic geometric comparisons, importing their construction from the
cohomology owners; CrystallineCohomology:CR.3 supplies its scoped base-change and
Frobenius theory. Neither is replanned. ArithmeticGaloisRepresentations:R01.5 is a recognition
interface; LV.1 is the existing owner of the particular finite-type argument. The classical
residue-disk construction does not require RelativeFarguesFontaine:RF0–RF4's relative
annuli, untilts or bundle modifications, so this proposal adds no such dependency.

HeightsRationalPointsAndObstructions:RP.4 can cite the LV.11 conclusion as another proof
route, preserving its existing Parshin reduction. EffectiveDiophantineMethods:ED.2 still
needs explicit logarithm bounds, precision certificates, reduction and an exhaustive residual
search for an effective S-unit algorithm. Qualitative LV finiteness supplies no computed
height bound or effective stopping certificate. No consumer edge is added to an unapproved
new layer.

These checks distinguish the imported contracts; they are not new Lean unit tests:

- For K=Q and S consisting of 2 and the infinite place, the S-unit solutions t are
  −1, 1/2 and 2. Finite generation alone would not single out this set.
- The Mordell contract includes genus two. A genus-one curve can have infinitely many
  rational points, so the genus restriction cannot be removed.
- In a dimension-three abelian variety, write d=phi³/6. The first nontrivial exceptional
  normalized degree is 8855, with distinguished representation dimension 53130. Excluding
  d=8855 for primitive divisors does not exclude its multiples for all divisors. SC.5 owns
  this normalization and its tests; M2.10 owns the isogeny reduction.
- The main hypersurface theorem is uniform in the ample class when dim A>=4, and counts
  translation classes. It does not assert that the set of all translates is finite.
- A codimension estimate in a higher-dimensional period space gives non-density by the
  stated transfer theorem. The parameter-family argument is still needed for finiteness.

## API, tests, planets and proof status

There are zero new definitions, constructions, lemmas, theorems or applications. Therefore
there are zero new API items, definition unit tests or planets. The definition APIs and tests
at LV.2–LV.3, M2.0 and SC.0–SC.1 are retained at those owners; creating aliases under this
identifier would introduce a second interface for the same objects. The existing stage
planets likewise remain attached to LV, M2 and SC. A process-only planet for this ownership
audit would not be mathematical content.

The packet's `complete` status means the target-disposition pass is finished. It is not
`closed`, does not claim any stage closed, and does not erase imported gaps. At the audited
snapshot, the accepted base plan has 146 nodes, 79 gaps and 76 requests; Part II has 79 nodes,
10 gaps and 12 requests; convolution has 52 nodes, 2 gaps and 19 requests. All their layers
are planned, rather than closed. This design's empty gaps/requests arrays mean it owns no
new mathematical obligations. They do not certify the supplier graph as gap-free.

The Suggested file imports the existing Mathlib S-integer module and checks the three
baseline names. It declares no replacement objects and no stand-in theorem. The heavy
geometric carriers are README targets at their existing owners, not fabricated Lean data.
Its compilation result and the validation commands are recorded in the handoff.

## Review and proposed disposition

Approve or reject the consolidation on the sixteen contracts above. If approved, the
maintainer can use the proposed identifier as an alternate entry point to the base roadmap,
with explicit pointers to its existing Part II and convolution supplier. No source theorem,
node, API, test or planet moves. No existing roadmap is retired or relabelled by this job.
If an uncovered mathematical target is found, name its statement and hypotheses, compare
it with the listed owners, and assign only that residual scope under the existing direction.
An empty independent scope is the finding, not a placeholder for another full design pass.

## Sources and extent of reading

The following are source locators for target verification, not a source-by-source extraction.
The source records in both JSON files contain versioned URLs, access dates, SHA-256 hashes
and the exact pages read. References elsewhere in an accepted owner's proof are imported
with that owner; this audit does not claim to have rechecked their entire proofs.

- **LV:** Lawrence–Venkatesh, [arXiv:1807.02721v3](https://arxiv.org/pdf/1807.02721v3),
  published in Invent. Math. 221 (2020), 893–999. Read Lemmas 2.1 and 2.3 (pp. 9–10),
  §§3.1–3.5 (pp. 15–20), Theorem 4.1 and the start of its proof (p. 20), and Proposition 5.3,
  Theorem 5.4 and the latter's proof (pp. 26–28).
- **LS:** Lawrence–Sawin, [arXiv:2004.09046v5](https://arxiv.org/pdf/2004.09046v5),
  16 October 2025. Read the main statement (p. 1), Theorem 3.5 (p. 21), the simultaneous
  monodromy and character-selection statements (pp. 33–37), the compatible-system setup
  (pp. 40–42), Lemma 5.49 (pp. 61–62), the period-transfer and balance setup (pp. 63–69),
  Theorem 8.17 (pp. 83–84), and the arithmetic applications (pp. 85–88).
- **F:** Faltings, [Endlichkeitssätze für abelsche Varietäten über Zahlkörpern](https://math.uchicago.edu/~drinfeld/Deligne%27s_conjecture_Manin_conf/Faltings_argument/Faltings.pdf),
  Invent. Math. 73 (1983), 349–366: §3 Lemma 4 (p. 357), §5 Satz 5 and proof
  (pp. 362–363), and Satz 6's statement (p. 363).
- **BT:** Bakker–Tsimerman, [The Ax–Schanuel conjecture for variations of Hodge structures](https://benjamin-bakker.github.io/hodge.ax.schanuel.pdf),
  author manuscript, §1.2 and Theorem 1.1 (pp. 1–2), published in Invent. Math. 217
  (2019), 77–94. The theorem statement and its role were checked; its proof was not audited.

No restricted book was needed. No source passage is reproduced in these deliverables.
Known source qualifications remain with the accepted owners; this job makes no new erratum
claim and does not independently certify their source-issue inventories.
