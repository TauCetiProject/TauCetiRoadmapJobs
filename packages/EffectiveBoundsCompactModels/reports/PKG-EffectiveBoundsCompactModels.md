# Package report: EffectiveBoundsCompactModels

## Result and input record

Wrote `packages/EffectiveBoundsCompactModels/README.md`, `packages/EffectiveBoundsCompactModels/Suggested.lean`, `packages/EffectiveBoundsCompactModels/metadata.toml` and `packages/EffectiveBoundsCompactModels/sources.toml`. Only the top-level `gaps` list changed in `packages/EffectiveBoundsCompactModels/design/plan.json`; a structural comparison after deleting that key confirms equality of every other value, and the textual diff changes only that list.

The accepted design has 27 nodes. Its separate `design/review.json` and its reports directory contained no review file. The acceptance review is embedded under `review` in plan.json, with a verdict for every node; I read and verified its claims rather than treating it as instructions. The design's source manifest was absent and has been created. A generated skeleton retained each node's statement, hypotheses, API, Checks, prerequisites and source locators before the prose expansion.

The decisive ownership correction is that `packages/EffectiveBoundsPartII/design/README.md` and its accepted plan already own the general arithmetic development. EffectiveBoundsPartII precedes this package in the supplied merge order. Its introduction and ownership paragraph explicitly identify the compact-model source item with that Part II's arithmetic scope. The roadmaps service confirms that it has no separate folder on main or in an open roadmap pull request; it is consumed as an explicitly permitted earlier roadmap, against its accepted board design. This is not evidence that the general theorems are proved. The final package is a numerical continuation: the explicit threshold, constants and inclusive real-cutoff estimate distinguish it from that supplier's unspecified eventual constants. The headline mathematics is unchanged; duplicate ownership is deleted.

Read upstream shapes in `Completed/EffectiveBounds/README.md`, `TauCetiRoadmap/GlobalNumberFields/README.md` and `Completed/IntegralLattices/README.md`, and compared metadata with `Completed/EffectiveBounds/metadata.toml` and `TauCetiRoadmap/ComplexTori/metadata.toml`. The final metadata is `topic = "math.NT"`.

## Headline theorem audit

The preliminary list, before the ownership sweep, comprised the product-span theorem, simultaneous first-half minima, short independent integers, arithmetic full-jet parameters, the finite-index Gram identity, the exact compact-model bound, the uniform compact-model theorem, the component covering theorem and the degree-sensitive field count. The general candidates are supplier results after the sweep, rather than missing local signatures. In particular I checked that arithmetic full jets can be stated directly on native bounded polynomials; absence of a supplier convenience definition alone is not a reason to call that mathematics unstatable.

The final headline list was recorded before writing the reduced acceptance test:

| Headline | Status | Lean declaration / missing carrier |
| --- | --- | --- |
| Explicit uniform compact models with threshold 65536, variable/monomial constants 3 and 16, and height exponent 40 log n | Stated | `TauCetiRoadmap.EffectiveBoundsCompactModels.uniformModel` |
| Exact-degree, unweighted class count with constant 65536 and every real inclusive cutoff H≥1 | Stated | `TauCetiRoadmap.EffectiveBoundsCompactModels.fieldCount` |

Both final headlines are statable at the pins. None is replaced by a weaker theorem or a free predicate. The real-body signature predicate contains the actual equations, actual Jacobian and actual rational-adjoin equality. The count uses a literal finite-dimensional intermediate-field subtype and the quotient by existence of rational algebra equivalence. These are the only simple definitions needed for the headlines; the general field-class interface remains a supplier obligation, not a new parallel library.

## Corrections and unsupported claims

- Deleted the duplicate general construction and its generic API promises. The precise target-by-target ownership map follows. All accepted Checks and worked boundary cases remain in the README, attached either to a numerical target or to the Worked examples that test an imported contract.
- The accepted design's old ArithmeticStatistics:ST.0 reference cannot be used as a supplier: the arithmetic-statistics work is an index of parts, and the field-count carrier is in later ArithmeticStatisticsPartIV §3.1. The elementary quotient is moved down to EffectiveBoundsPartII EB.5 through `gap:bounded-field-class-interface`; its broader weighted/signed statistical adapters remain downstream. No upward dependency on any arithmetic-statistics part is introduced.
- Resolved the geometry suppliers to §§0.1.2, 0.3.3, 1.1.1–1.1.5, 1.2.7 and 1.5.21 and the interpolation suppliers to §§0.1, 0.3, 1.3–1.4 and 5.1–5.3. The old GN/GI labels are not asserted to be section headings at the present heads.
- Resolved the Jacobian algebra to SchemeAndStackFoundations §0.9 and Bézout to §5.12 on main. Its degree inequality does not explicitly provide the arbitrary-r isolated local-length contract. The accepted nonblocking request is now a machine-readable top-level gap, `isolated-intersection-lengths`, with matching README wording. A plane-only result is never used for arbitrary r.
- Retained the distinction between a specified integral tuple and an arbitrary surjection from the rational model. For 2x−1 the variable image is 1/2, so an arbitrary map does not supply an integral tuple. The predicate-to-surjection interpretation explicitly fixes the variable images and uses finite-dimensionality of ℚ[κ] for the converse.
- Used the actual library pins rather than the design's older baseline: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Both checkout HEADs equal the manifest revisions. The content checkout was main `b41e47bc34e30def0db01d84cc92062ed72c6e68`. The service's final resolution audit additionally refreshed its main index to `7bd35ba`; the cited supplier passages were resolved again there.
- Kept Theorem 2 on published p.488, rather than the stale p.487 in the design reader. Proposition 1 is p.490, Proposition 2 p.495, and Theorem 1 p.487.
- Recomputed the least parameter: r(65536)=12, not the plausible trial value 11. Its previous capacity is 705432<786432; its capacity is 2704156≥851968. All displayed decimal Checks are evaluations of the formulas, not replacements for the inequalities.
- The compact-model theorem neither presents the integer ring nor generates the whole relation ideal. Models can have several field factors and positive-dimensional components outside their Jacobian open. These stronger unsupported conclusions are excluded.

No source erratum is asserted. The source extraction's inequality glyphs do not override the inclusive inequalities verified mathematically. No untrusted passage was used as an instruction, and none requested a credential, external write or change of working rules.

## Duplication removals by mathematical object

The following are deletions of local targets, with their API lists retained as supplier obligations rather than additional local declarations. Each original Check is kept in the imported-contract example suite. The four nonduplicate refinements are the explicit central estimates, explicit uniform model, explicit common cover and explicit final count.

| Original design target | Owner imported instead |
| --- | --- |
| Canonical Minkowski measure | EffectiveBoundsPartII EB.0/measure-normalization |
| Discriminant covolume | EffectiveBoundsPartII EB.0/discriminant-covolume |
| Short first-half integers | EffectiveBoundsPartII EB.0/half-small-integers |
| Products of a large subspace | EffectiveBoundsPartII EB.0/product-span |
| Short independent algebraic integers | EffectiveBoundsPartII EB.0/short-integers |
| Integral parameter tuples | EffectiveBoundsPartII EB.1/parameterized-generators |
| Bounded full-jet parameters | EffectiveBoundsPartII EB.1/bounded-parameter-choice |
| Degree-bounded evaluation surjectivity | EffectiveBoundsPartII EB.1/value-surjectivity |
| Integral bounded evaluation | EffectiveBoundsPartII EB.2/relation-lattice with native MvPolynomial.aeval |
| Saturated relation lattice | EffectiveBoundsPartII EB.2/relation-lattice |
| Transpose evaluation image | EffectiveBoundsPartII EB.2/dual-image |
| Finite-index discriminant identity | EffectiveBoundsPartII EB.2/gram-discriminant-identity |
| Relation covolume bound | EffectiveBoundsPartII EB.2/evaluation-height and EB.2/relation-covolume-bound |
| Truncated short relations | EffectiveBoundsPartII EB.3/independent-short-relations and EB.3/truncate-relations |
| A full-rank gradient block | EffectiveBoundsPartII EB.3/one-full-gradient-block |
| A common nonzero Jacobian minor | EffectiveBoundsPartII EB.3/common-jacobian-minor |
| Jacobian-open arithmetic models | EffectiveBoundsPartII EB.4/jacobian-open |
| Explicit compact model bound | EffectiveBoundsPartII EB.4/explicit-small-model |
| Least central-binomial parameter | EffectiveBoundsPartII EB.5/central-binomial-choice |
| Finite equation coefficient boxes | EffectiveBoundsPartII EB.5/bounded-equation-systems |
| Exact coefficient enumeration | EffectiveBoundsPartII EB.5/coefficient-box |
| Isomorphism classes of model components | EffectiveBoundsPartII EB.5/components-to-classes |
| Isolated-component Bézout bound | EffectiveBoundsPartII EB.5/components-to-classes with SchemeAndStackFoundations §5.12 |

Additional foundational duplication was excluded by object: generic bounded-polynomial coordinates, jets and universal minors remain with GenericDoublePointInterpolation; generic minima, Gram–Hadamard and primitive orthogonal intersections remain with GeometryOfNumbersAndQuadraticArithmetic; generic quotient/localization and étaleness remain native or with SchemeAndStackFoundations. The Tau Ceti intrinsic Gram theorem is imported directly instead of proposed again. The completed EffectiveBounds primitive-element/Hermite infrastructure is consumed, never rebuilt.

Ownership searches used both `roadmaps grep` passes across main and all indexed open heads, the board packages, and the pinned source trees. The object searches included bounded total degree, coefficient Euclidean metrics, first-jet kernels, successive-minimum witnesses, primitive orthogonal intersections, Jacobian localization, isolated intersections, relation lattices, component classes and root discriminants. ComputationalNumberTheory's relation lattices concern factor bases and are different from bounded polynomial relations in a number field. ArithmeticKTheory's occurrence is a linear relation-vector construction, not this compact-model argument. SuccessiveMinima also contains generic witness theory; no such generic theory is a local target. No local declaration uses a fully qualified name from another roadmap.

Open-work ownership was checked through the supplied roadmaps service at the indexed heads, including the named open folders. No GitHub write or extra pull-request discovery was performed. EffectiveBoundsPartII is not in that head index; its earlier accepted board design is the authority for this dependency, not a fictitious open folder.

## Pinned declaration evidence

The literal definitions were read at the pins, rather than inferred from their names. They are summarized here in original wording, without copying source passages.

| Object | Pinned module and line | Native content and hypotheses relevant here |
| --- | --- | --- |
| Mixed space | `Mathlib/NumberTheory/NumberField/CanonicalEmbedding/Basic.lean:186` | Product of real-place and complex-place functions; the native product norm is the gauge. The separate Euclidean model at line 815 is not a doubled complex metric. |
| House | `Mathlib/NumberTheory/NumberField/House.lean:38` | Norm of canonical embedding; embedding-supremum comparison at line 41, multiplication at line 51, nonzero-integral lower bound at line 93. Zero is excluded by the lower-bound theorem. |
| Root discriminant and field Gram normalization | `Mathlib/NumberTheory/NumberField/Discriminant/Basic.lean:49` and line 77 | Canonical integral-basis determinant squared and real root discriminant. A different integral basis needs unimodular change; a merely independent family can have index >1. |
| Mixed covolume | `Mathlib/NumberTheory/NumberField/Discriminant/Basic.lean:124` | Product-measure covolume is 2^(−s)√|disc|. |
| Hermite finiteness | `Mathlib/NumberTheory/NumberField/Discriminant/Basic.lean:494` | Subtype of finite-dimensional intermediate fields in a fixed ambient field, with a supplied native number-field instance and inclusive absolute integer cutoff. |
| Bounded polynomial space | `Mathlib/RingTheory/MvPolynomial/Basic.lean:164` | Submodule by support exponents whose sum is ≤d; membership/total-degree equivalence at line 174. Zero remains included. |
| Product-grid vanishing | `Mathlib/Combinatorics/Nullstellensatz.lean:62` | Commutative domain, finite variable type, strict coordinate-degree/cardinality inequalities. Applies over ℂ without integer coefficients. |
| Dual and transpose | `Mathlib/LinearAlgebra/Dual/Defs.lean:61` and line 116 | Linear dual and precomposition; no integral-surjectivity consequence. |
| Algebra evaluation and derivatives | `Mathlib/Algebra/MvPolynomial/Eval.lean:572`; `Mathlib/Algebra/MvPolynomial/PDeriv.lean:61` | Actual native algebra homomorphism and derivation, used in the model predicate. |
| Integers | `Mathlib/NumberTheory/NumberField/Basic.lean:101` | Native integral closure carrier; no replacement ring-of-integers type. |
| Away localization | `Mathlib/GroupTheory/MonoidLocalization/Away.lean:140` | Native localization at powers; the associated ring/algebra construction permits a zero localization. |
| Index/covolume ratio | `Mathlib/Algebra/Module/ZLattice/Covolume.lean:170` | Finite-dimensional real inner-product ambient space, Borel structure, two discrete full lattices and inclusion. Apply inside their common span. |
| Intrinsic Gram covolume | `TauCeti/Algebra/Module/ZLattice/Covolume.lean:42` | Actual integral basis of a discrete full lattice in a finite-dimensional real inner-product space. |
| Baseline explicit field count | `TauCeti/NumberTheory/EffectiveBounds/HermiteCount/Basic.lean:172` | Fixed-ambient finite extensions, inclusive natural discriminant bound; does not assert the new degree-sensitive exponent. |

## Source audit

The only mathematical work cited directly is the published Couveignes paper. The source service fetched the publisher-open PDF and certified key COUVEIGNES20 with SHA-256 `8d63bd3a14f0d61f421695f1d93559d18fb674240c6dee872c23bf5902e1a104`. I read the entire 11-page line-numbered extraction, including the proof steps used here. Locators agree with the published pagination: COUVEIGNES20 line 20, line 35, line 94, line 161, line 169, line 242, line 255, line 269, line 323, line 348, line 354, line 381, line 409 and line 425.

The first URL-only fetch did not know the publisher's licence class. After verifying the open publisher copy, the second fetch used `publisher-open` and succeeded. The stale missing entry was settled; no source request remains. Bibliographic author, title, year, DOI and version note were filled in the manifest under the same lifetime key. The source check reports 0 problems. No extracted source text was copied into the package or report. Generic foundational literature is consumed through supplier contracts rather than cited unread as an extra source.

## Computed adversarial mathematics pass

All values below are computed from the stated definitions. Boundary tests outside the large-degree hypotheses test the underlying formula or imported contract; they are not witnesses for the uniform existence theorem. Field hypotheses exclude the zero ring. Fans, nonabelian groups and DVR coefficient variants are not carriers of these statements; characteristic, nilpotents, degree zero, empty tuples, intrinsic rank zero, inseparability and infinite ambient extensions are tested where they actually enter.

| Statement | Instances tried | Values on the two sides / computed outcomes | Result | Change |
| --- | --- | --- | --- | --- |
| Canonical measure definition | ℚ; one complex place; two real places | 2=2; canonical disk area 2π versus product π; square area 4=2² | Pass | Imported EB.0; kept normalization witnesses. |
| Measure API: scaling on sets | Unit disk and an empty set | 2·π=2π; 2·0=0 | Pass | None; hypotheses and conclusion retained. |
| Measure API: nonzero Haar property | Interval and complex disk | Masses 2 and 2π are positive and finite; translation preserves these values | Pass | None; hypotheses and conclusion retained. |
| Measure API: unit-body lower bound | s=0 and (r₁,s)=(0,1) | 2ⁿ=2ⁿ; 2π>4 | Pass | Kept ≥, never an all-signatures strict inequality. |
| Canonical discriminant covolume | ℚ; ℚ(i); ℚ(√5) | 1=√1; 2·1=√4=2; √5=√5 | Pass | Imported EB.0; product/canonical distinction retained. |
| First-half independent minimum witnesses | n=1,3,4; ℚ(i) | m=1,2,3; last exponents 1/2,3/4,1; houses (1,1), product 1≤2 | Pass | None; hypotheses and conclusion retained. |
| Strict large-subspace product span | V=K=k; V=ℚ in ℚ(i); V=(ε,ε²) in k[ε]/ε³ | Span dimensions 1=1; 1<2 at 2dim V=n; 1<3 despite 2dim V=4>3 in the nonfield | Pass | Kept field and strict-threshold hypotheses; imported EB.0. |
| Inseparable product-span extension | k=𝔽₂(t), K=k(√t), V=K | [K:k]=2, 2dim V=4>2, products 1·1 and 1·√t span dimension 2 | Pass | None; hypotheses and conclusion retained. |
| Short independent integers | ℚ; (1,2i); zero tuple in ℚ(i) | House 1≤1; houses (1,2)≤4 with index 2; zero tuple rank 0<2 | Pass | Retained independence; prohibited integral-basis inference. |
| Signed parameter definition | n=0; α=(1,i), columns (0,0),(1,0),(0,−1) | κ=0; κ=0,1,−i respectively | Pass | Imported finite sum, including empty family. |
| Parameter API: coordinate formula | α=(1,i), u=(2,−3) | κ=2−3i=2·1−3·i | Pass | None; hypotheses and conclusion retained. |
| Parameter API: embeddings | Conjugate embedding at 2−3i | Conjugate value 2+3i equals 2−3(−i) | Pass | None; hypotheses and conclusion retained. |
| Parameter API: house bound | n=2,A=1,B=3,u=(2,−3) | House √13≈3.605551≤6=nBA | Pass | None; hypotheses and conclusion retained. |
| Full-jet bounded parameters | n=r=1,d=5; repeated supports | B=10, κ=0, jets of (1,x) give identity determinant 1; two coincident supports give rank≤2<4 | Pass | None; hypotheses and conclusion retained. |
| Grid size and coefficient domain | B=2, P=T(T−1); ℂ coefficient multiple iP | P(0)=P(1)=0, P(2)=2; iP(2)=2i≠0 | Pass | B+1 points, complex coefficients retained. |
| Value descent and gradient kernel | ℚ(i),κ=2i,d=1; κ=0; point 0 in A¹ | Rational rank 2, integral index 2; zero tuple rank 1<2; bx has value 0 and derivative b | Pass | None; hypotheses and conclusion retained. |
| Integral bounded evaluation definition | d=0,c=3; κ=0; κ=2,p=x² | ε=3; only constant survives; ε=4≠2 | Pass | Specialization of native evaluation, not a duplicate carrier. |
| Integral evaluation API: formula | κ=2,p=3−x+x² | ε=3−2+4=5 | Pass | None; hypotheses and conclusion retained. |
| Integral evaluation API: monomial | κ=2,a=0,1,2 | Images 1,2,4 | Pass | None; hypotheses and conclusion retained. |
| Integral evaluation API: native polynomial compatibility | κ=2,p=3−x+x² | Coefficient-sum evaluation 5 equals native algebra evaluation 5 | Pass | None; hypotheses and conclusion retained. |
| Relation kernel definition and membership | κ=0,p=x; κ=2i,p=x²+4,x²+1; p=1 | Values 0; 0 and −3; 1, respectively | Pass | None; hypotheses and conclusion retained. |
| Relation API: saturation | ε(c)=0 and a=−2; torsion target ℤ/2 negative control | ε(−2c)=−2·0=0; kernel 2ℤ has 2·1 in it but 1 outside | Pass | Kept torsion-free integer target; no arbitrary torsion target. |
| Relation API: rank/scalar extension | ℚ,κ=2,d=1; ℚ(i),κ=2i,d=1 | M−n=2−1=1 with kernel (−2,1); 2−2=0 | Pass | None; hypotheses and conclusion retained. |
| Transpose image definition | ℚ,κ=2,d=1; ℚ(i),κ=2i,d=1 | D=ℤ(1,2); D=diag(1,2)ℤ² with index 2 | Pass | None; hypotheses and conclusion retained. |
| Transpose API: image characterization | ℚ, functional f(z)=3z,κ=2 | Coordinates (3,6)=3(1,2) | Pass | None; hypotheses and conclusion retained. |
| Transpose API: orthogonality | (1,2) and (−2,1) | Dot product −2+2=0 | Pass | None; hypotheses and conclusion retained. |
| Transpose API: positive index | ℚ and ℚ(i) examples; d=0 over ℚ | q=1; q=2; D=ℤ, index 1 | Pass | Never identified D with the primitive complement without an index proof. |
| Indexed Gram/discriminant identity | ℚ,κ=2; ℚ(i),κ=2i | q²covol(L)²=5=det(BBᵀ); 4=4=16/4 | Pass | Index q retained; imported EB.2. |
| Intrinsic empty determinant | L=0 in ℝ²; empty Gram matrix | Intrinsic covolume²=1=det(empty); ambient area 0≠1 | Pass | None; hypotheses and conclusion retained. |
| Evaluation-entry and relation-covolume estimates | n=1,r=d=1,δ=1,κ=2; n=2,δ=2,κ=2i | C=2,D₀=8,√5≤√8; C=32,D₀=2048,covol=1≤1024 | Pass | Small d tests algebraic inequality, not full-jet existence range. |
| Constant monomial in the evaluation bound | κ=0, a=0 versus a=1 | Values 1 and 0; a coordinate upper bound 0 cannot bound the constant monomial | Pass | None; hypotheses and conclusion retained. |
| Short-relation product and truncation | (n,r,d)=(1,1,5),(2,1,5),(3,2,5) | (M,ℓ,k)=(6,5,5),(6,4,3),(21,18,16); codimensions 0,1,2=n−1 | Pass | None; hypotheses and conclusion retained. |
| Zero-based tail denominator | n=2,ℓ=4,k=3,i=2 then i=3 | Tail lengths 4−2=2=n; 4−3=1<n | Pass | Retain exactly k; no out-of-range division. |
| One full gradient block | U=diagonal; U=ℂ×0; U=0 in ℂ² | Projection ranks (1,1),(1,0),(0,0); codimensions 1,1,2 | Pass | One block only follows at codimension n−1; imported EB.3. |
| Common minor at all embeddings | E=x²+4,κ=2i; E=x²,κ=0 | Determinants 4i and −4i, both nonzero; second determinant 0 | Pass | Same equations used at every embedding. |
| Equation/variable Jacobian convention | (x−a,y−b) then swapped equations | Determinants 1 and −1; identical nonvanishing open | Pass | None; hypotheses and conclusion retained. |
| Rational Jacobian-open algebra | x²; x²−1; (xy,x(y−1)); empty tuple | Algebras 0,ℚ×ℚ,0,ℚ; component numbers 0,2,0,1 | Pass | None; hypotheses and conclusion retained. |
| Model API: finite étaleness versus general base | ℚ field base; R=ℚ[t],f=tx−1 | Field examples have dimensions 0,2,0; over R, J=t and inverse x=t⁻¹ requires arbitrarily negative t-powers | Pass | No generic-ring finiteness assertion imported. |
| Model API: lift and specified images | E=x²+1,κ=i; E=2x−1 | Evaluation sends x to i and J to 2i; other model sends x to 1/2 | Pass | Required specified integral variable images in predicate interpretation. |
| Model API: field factor | ℚ×ℚ→ℚ first projection | Kernel 0×ℚ maximal, residue degree 1, two total components | Pass | None; hypotheses and conclusion retained. |
| Exact compact-model expression | ℚ,r=1,d=5; ℚ(i),E=x²+1 | Height 1≤32·5^(5/2)√6≈4381.780460; second J=2i≠0 | Pass | Imported Proposition 2, kept integral tuple interpretation. |
| Least central parameter definition | n=0,1,2,3,14,15,65536 | r=1,1,2,3,4,5,12 | Pass | Total value at zero is a convention, not an interpolation guarantee. |
| Least-parameter API: specification | n=2; n=3; n=65536 | r=2,3,12 are positive; capacities 6≥6, 20≥12, 2704156≥851968 | Pass | None; hypotheses and conclusion retained. |
| Least-parameter API: minimality | Same three degrees, previous positive parameters | 2<4; 6<9; 705432<786432. The Catalan capacities are increasing, so smaller parameters also fail | Pass | Least, rather than arbitrary, capacity witnesses retained. |
| Least-parameter API: monotonicity | n=1,2,3,14,15 | 1≤2≤3≤4≤5 | Pass | None; hypotheses and conclusion retained. |
| Catalan ratio and exponential witness | t=1,2,11 | Ratios 2,5/2,46/13; all ≥2 and <4; C₁=1=2⁰ | Pass | None; hypotheses and conclusion retained. |
| Explicit r and M estimates, README §0.1 | n=65536 | r=12≤33.271065; 851968≤2704156<3407872≤11629079.968045 | Pass | Numerical threshold retained. |
| Explicit log/rank estimates, README §0.1 | n=65536 | ℓ=2638620; ℓ/(2n)=20.131073≤88.722839; log M=14.810300≤33.271065; log ℓ≈14.785767≤33.271065; log156=5.049856≤22.180710 | Pass | None; hypotheses and conclusion retained. |
| Explicit height exponent, README §0.2 | n=65536,δ=1,2 | log H₀=631.825287≤4919.838863; 648.460819≤5227.328791 | Pass | 40-exponent retained before weakening to Q. |
| H₀ logarithm route | n=65536,δ=1 | ℓ logℓ/(2n)+logM/2+r log(n²r(r+1))≈631.825287; route bound 36L²+1.5L≈4444.490509<4919.838863 | Pass | None; hypotheses and conclusion retained. |
| Native compact-model predicate | ℚ(i): x²+1 at i; x at 0; ℚ:x² at 0 | (value,J,generated degree)=(0,2i,2),(0,1,1),(0,0,1) | Pass | Generation and nonzero-Jacobian clauses both necessary. |
| Compact predicate arity zero | K=ℚ and K=ℚ(i) | Empty equations, determinant 1; generated degrees 1 in both cases, equal to [K:ℚ] only in the first | Pass | None; hypotheses and conclusion retained. |
| Uniform numerical model headline | n=65536 and n=1 | At threshold r=12≥5, M=2704156, log height≤4919.838863; n=1 has r=1 and fails threshold | Pass | Same generality in README and Lean; no claim of r≥5 at n=1. |
| Native represented-field abbreviation | ℚ; ℚ(i); whole ℚbar | Degrees 1,2,∞; first two admitted, third excluded despite finrank junk value 0 | Pass | None; hypotheses and conclusion retained. |
| Number-field instance | ℚ; ℚ(i); real quadratic field | Native (degree,disc)=(1,1),(2,−4),(2,5); instance reuses the finite-dimensional witness | Pass | None; hypotheses and conclusion retained. |
| Bounded field subtype | n=0; n=1,H=1; ℚ(i) at H=3,4 | Cardinal 0; cardinal 1; membership false,true | Pass | None; hypotheses and conclusion retained. |
| Field isomorphism setoid | Three cubic conjugate images; √2 versus √3; self-equivalence | Three representatives collapse to 1; unrelated quadratic classes remain 2; identity relates one object to itself | Pass | None; hypotheses and conclusion retained. |
| Isomorphism equivalence laws | Identity, conjugation and two successive conjugations on ℚ(i) | i↦i; i↦−i; composite i↦i; each preserves rationals and discriminant −4 | Pass | None; hypotheses and conclusion retained. |
| Class count definition | (n,H)=(0,1),(1,1),(2,3); H<0 | Counts 0,1,1; negative cutoff gives 0 | Pass | Ordinary quotient, no weights. |
| Class API: Hermite finiteness and real-floor bridge | H=5/2; H=−1; n=1,H=1 | Integer bound 2; negative sublevel empty; rational bounded subtype and quotient each have one member | Pass | Fixed-ambient finite set precedes natural cardinality. |
| Class API: cutoff inclusions | ℚ(i),H=3,4,5 | Membership 0,1,1; count cannot decrease along 3≤4≤5 | Pass | None; hypotheses and conclusion retained. |
| Coefficient-box definition | r=0; B=0; r=1,d=0,B=1 | Cardinalities 1,1,3; constant list −1,0,1 | Pass | Imported EB.5; no new box definition. |
| Box API: membership | r=d=1,B=2; 2x−2 and 3x | Maximum coefficients 2≤2 and 3>2; first included, second excluded | Pass | None; hypotheses and conclusion retained. |
| Box API: finiteness | r=1,d=1,B=2; r=2,d=2,B=1 | Slots 2 and 12; cardinalities 25 and 3¹²=531441 | Pass | None; hypotheses and conclusion retained. |
| Box API: monotonicity | 2x−2 as B rises 1→2, d rises 0→1 | Excluded→included in both comparisons | Pass | None; hypotheses and conclusion retained. |
| Box API: real-height floor iff | F=5/2 and coefficients ±2,±3; F=0 | ±2 allowed by real and floor bounds; ±3 rejected by both; F=0 allows only 0 | Pass | None; hypotheses and conclusion retained. |
| Exact coefficient enumeration | r=1,d=0,B=1; r=1,d=1,B=2; r=0 | 3=3¹; 25=5²; 1=(2B+1)⁰ | Pass | None; hypotheses and conclusion retained. |
| Component class definition | x²; x²−1; (x²−2)(x²−3) | Component/image cardinalities (0,0),(2,1),(2,2) | Pass | Maps all components then takes ordinary classes. |
| Component API: quotient characterization | Projection ℚ×ℚ→ℚ; residue of x²+1 | Residues ℚ and ℚ(i), classes independent of chosen kernel presentation | Pass | None; hypotheses and conclusion retained. |
| Component API: embedding independence | ℚ(i) embedded by i and −i | Same polynomial x²+1, same degree 2, same discr −4, same one class | Pass | None; hypotheses and conclusion retained. |
| Component API: finite image | x²−1; product of two irreducible quadratics | Two factors map to 1 and 2 classes respectively; image size≤domain size=2 | Pass | None; hypotheses and conclusion retained. |
| Isolated components and local lengths | x²−1; x²+1; x²; line-only pair | Geometric points 2,2,0,0; rational factors 2,1,0,0 after Jacobian localization | Pass | Arbitrary-r local-length input remains an explicit gap. |
| Positive-dimensional and constant degeneracies | xy,x(y−1); zero equation; nonzero constant | Common line x=0 with J=x, open empty; zero derivative row; zero quotient. All component counts 0 | Pass | None; hypotheses and conclusion retained. |
| Real-cutoff common finite cover | F=5/2; two rational factors; two distinct quadratic factors | Coefficient choices 5; surjection sizes 2→1 and 2→2 | Pass | Retained explicit height and degree cutoff; no injection from fields to tuples. |
| H=1 in final count | n=65536,H=1 | log H=0; H^(65536L³)=1; finite-box log≈159670633916.582≤1982858398366.559 | Pass | No logH division; the exact floor precedes all estimates. |
| Final H-exponent scaling | n=65536,H=2 | Extra logF≈0.004691924; rM·extra≤1920L³log2; final H exponent 65536L³ has no n | Pass | None; hypotheses and conclusion retained. |
| Finite-box overhead absorption | n=65536,H=1 | 48nL²log3+3L²≈425066505.796≤80nL⁴≈79314335934.662 | Pass | 2000=1920+80; stated overhead bound made explicit. |
| Final logarithmic absorption | n=65536,H=1,2 | Coefficients 2000≤65536 and 1920≤65536; L>0 and logH≥0 preserve both inequalities | Pass | Uniform same constant for threshold and both final exponents. |
| Unweighted nonnormal/Galois controls | ℚ(∛2); ℚ(ζ₇)⁺; quadratic field | Embedded/automorphism counts (3,1),(1,3),(1,2); all quotient counts=1 | Pass | No embedding count, natural n/Aut division or reciprocal weight substituted. |
| Prime/characteristic controls on imported algebra | Derivative x² over 𝔽₂; derivative x³ over 𝔽₃; ℚ examples | Derivatives 0 and 0 in those fields; over ℚ, derivatives 2x and 3x² | Pass | Char-zero number fields are explicit; no bad-prime exclusion or false characteristic-p generalization. |
| Signature and coefficient conventions | ℚ; ℚ(i); ℚ(√5); coefficient vector of 1+x | Degrees 1=1+2·0, 2=0+2·1, 2=2+2·0; coefficient norm²=1²+1²=2 | Pass | Supremum gauge and coefficient Euclidean metric distinguished. |
| Real division in the H₀ exponent | n=2,M=6,ℓ=4; n=3,M=21,ℓ=18 | ℓ/(2n)=1 and 3 as real exponents; δ^(2d) exponent at d=5 is 10; zero denominator excluded by n≥1 | Pass | Real exponents and integral powers explicitly separated. |
| Native bounded-degree zero and outside-support convention | p=0,d=0; p=1; x² at d=1 | Total degrees 0,0,2; first two admitted at d=0, third rejected at d=1; unsupported coefficients=0 | Pass | None; hypotheses and conclusion retained. |
| Source/target and choice invariance | A_E→K specified integral tuple; conjugate embeddings | For x²+4, images x=±2i and J=±4i; domain is same rational localized quotient | Pass | Map domain and fixed variable images specified; no unmarked isomorphism substituted. |

The API rows test defining conditions in both directions where an iff is claimed (box floors, kernel membership and quotient class equality). Negative controls exhibit precisely the tempting wrong model: equality of embedded fields, an integral basis inferred from short vectors, index q=1, ambient instead of intrinsic volume, value-only rather than jet interpolation, a global zero locus instead of its Jacobian open, or an unspecified tuple in place of the constructed integral one. No bare assumed predicate contains either headline conclusion.

## Elaboration and binder audit

Ran `lake env lean` on `packages/EffectiveBoundsCompactModels/Suggested.lean` from the pinned content repository. Exit code 0. Exactly **2** warnings, both ``warning: declaration uses `sorry` ``: at the declarations uniformModel and fieldCount. No errors and no other final-build messages. No Tau Ceti import is used by the signatures, so no object-file build was needed. The file contains one `import Mathlib`, two theorems, five definitions/abbreviations and one real-body instance, with no admitted data, examples, options or extra imports.

In one scratch file I copied the final acceptance file and appended `#check @name` for **all eight declarations**, then elaborated it once. This also exited 0 with exactly the same two sorry warnings, followed only by the eight requested type displays. The displays confirm:

- IsCompactModel and uniformModel retain K, Field K and NumberField K explicitly, including the needed finite-extension and ring-of-integers structure. The uniform theorem retains its degree threshold and quantifies over every exponent in Fin r →₀ ℕ.
- EmbeddedField is a native small subtype; its instance explicitly consumes its finite-dimensionality witness. BoundedFields, fieldIsoSetoid and numberFieldCount retain both n and real H.
- fieldCount retains n≥65536 and H≥1; its real exponents are exactly 65536·n·(log n)³ and 65536·(log n)³.

No binder changed or disappeared in the audit. The only earlier elaboration repair was opening the NumberField notation namespace for 𝓞 and giving the reflexivity proof's unused binder an underscore name; the final file has no non-sorry warning. README and Lean have the same degree threshold, integral tuple, model condition, numerical constants, natural logarithm, ordinary quotient and inclusive real discriminant cutoff.

## Identifier, citation and dependency checks

All backticked local README declaration names match the eight declarations of Suggested.lean. No API or Check is given a fictitious local Lean declaration. A mechanical parse checked the local-name sets in both directions. The accepted design outside its top-level gaps list is unchanged.

The roadmap-resolution command reports no missing cross-roadmap citations and no missing Lean names. Its note that it did not check external Lean names because its host lacks pinned Lake packages is a tooling limitation, not pin evidence: the declaration checks above were performed directly in the actual pinned source trees. EffectiveBoundsPartII's accepted-board target IDs were also parsed and compared with every referenced EB target, since that design is not a main/open folder.

The dependency command used the requested package name, read-only supplied order and movable mode. Exact output:

    depcheck: 48 roadmaps, 539 edges, 0 problem(s)

There is no UPWARD, CYCLE or moved line for this roadmap. Later arithmetic-statistics roadmaps occur only as downstream consumers and in the explanation of the moved foundational interface. Both supplier gaps have earlier suppliers and matching one-sentence needs in README and plan.json.

The final source check reports 0 problems. Work and validation processes have finished; no Lean command remains running.
