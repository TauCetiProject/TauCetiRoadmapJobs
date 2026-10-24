import Mathlib

/-!
# Adic coefficients and comparison with schemes, part II: target signatures

The roadmap is README.md; this file is not the roadmap. It records the
statability of the roadmap’s headline theorems against the pinned Mathlib
and Tau Ceti APIs. None of the following full headline statements is statable
at these pins using only a few simple definitions on native carriers.

- PA.0.6 — Finite-type flattening by admissible blow-ups: not statable. The admissible blow-up and strict-transform carrier for qcqs schemes is not supplied at the pins.

- PA.0.7 — Non-separated Chow lemma: not statable. Projective morphisms, modifications and pseudo-projective factorizations lack pinned geometric carriers.

- PA.0.10–PA.0.12 — Universal projective resolvability in dimensions one, two and three: not statable. Quasi-excellence, universal projective resolvability and SNC boundaries lack pinned carriers; the threefold form also retains the mathematical projectivity obligation.

- PA.1.4 — Compactness and valuative description of pointed Riemann–Zariski spaces: not statable. The pointed locally ringed limit and its valuative-point comparison are heavy constructions absent at the pins.

- PA.1.6 — Openness of pointed Riemann–Zariski restriction: not statable. The relative pointed Riemann–Zariski and valuative-centre carriers are absent; the absolute valuation spectrum is insufficient for this statement.

- PA.2.6 — Tame distillation for finite field extensions: not statable. Arbitrary-rank henselized tameness, wild loci and prime-supported closed extensions lack pinned carriers.

- PA.2.7 — Separable tame distillation for finite separable extensions: not statable. The same valued-field tameness and maximal separable prime-supported extension carriers are absent.

- PA.3.7 — Tame distillation of alterations: not statable. Scheme alterations, generic degree and geometric inertia/tame-covering interfaces are absent.

- PA.3.8 — Separable tame distillation of alterations: not statable. Separable scheme alterations and the arbitrary-rank tame-covering carrier are absent.

- PA.4.4 — Normalized monoidal blow-up comparison: not statable. Fine/fs log schemes, coherent log ideals and log blow-ups are absent.

- PA.4.5 — Functorial saturated monoidal desingularization: not statable. Log schemes, fans and functorial towers of saturated log blow-ups are absent.

- PA.4.6 — Gabber modification for inertia specializing actions: not statable. Log regular schemes, very tame actions and the normalized modification construction are absent.

- PA.4.7 — Gabber preparation for equivariant log smooth maps: not statable. The log-scheme, characteristic-monoid chart and log smoothness interfaces are absent.

- PA.4.8 — Relative Gabber modification without separatedness: not statable. Log smooth pairs, very tame quotient and projective modification carriers are absent.

- PA.5.2 — Projectivity of stable modifications: not statable. Non-proper multipointed semistable curves, their dualizing sheaf and relative-ampleness comparison are absent.

- PA.5.3–PA.5.4 — Existence, uniqueness and equivariance of stable modification: not statable. The multipointed curve, stable modification and generically étale alteration carriers are absent.

- PA.5.6 — Resolution of relative curves by prime-supported alterations: not statable. Universal resolvability, scheme alterations, strict transforms and log smooth pairs are absent.

- PA.6.1–PA.6.2 — Prime-supported desingularization of morphisms and inheritance: not statable. Prime-supported scheme alterations, SNC supports, universal projective resolvability and log smooth pairs are absent.

- PA.6.3 — Separable desingularization over a perfect field: not statable. Separable scheme alterations, SNC supports and the log smooth resolution diagram are absent.

- PA.6.4 — Desingularization by residue-characteristic alterations: not statable. Quasi-excellent schemes, prime-supported alterations and SNC boundaries are absent; the threefold projectivity obligation remains mathematical as well.

- PA.6.5–PA.6.6 — Residue-characteristic desingularization of morphisms and source refinement: not statable. The prime-supported alteration diagram, scheme-theoretic image, SNC boundaries and log smoothness carriers are absent.

- PA.6.7 — Gabber prime-to-ell alteration theorem over a field: not statable. Generic degrees of scheme alterations, projective morphisms and relative SNC divisors lack pinned geometric interfaces.

- PA.6.8 — Gabber prime-to-ell alteration theorem over a one-dimensional base: not statable. The alteration and projectivity predicates, SNC divisor and log monomial local model interfaces are absent.

- PA.6.9 — Prime-to-ell smooth variety alteration with boundary: not statable. The scheme alteration and strict normal crossings boundary interfaces are absent.

- PA.6.10 — Odd-degree regular alteration of a henselian DVR model: not statable. The finite-degree scheme alteration, regular scheme and projective model interfaces are absent.

- PA.6.11 — de Jong equivariant Galois alteration with projective compactification: not statable. Geometric finite-group alterations, projective compactification and G-strict SNC boundaries lack pinned interfaces.

- PA.6.12 — de Jong arithmetic semistable alteration over a global Dedekind base: not statable. Scheme alterations, projective compactifications, strict semistable pairs and their completed local models lack pinned interfaces.

The native scheme, field, valuation-subring and valuation-spectrum objects
do not replace the missing geometric constructions. In particular, an
absolute valuation-spectrum theorem would not state the relative pointed
restriction theorem, and a prime-degree field identity would not state a
scheme alteration theorem. No substitute predicate or admitted data is used.
-/

namespace TauCetiRoadmap.AdicCoefficientsAndComparisonsPartII

end TauCetiRoadmap.AdicCoefficientsAndComparisonsPartII
