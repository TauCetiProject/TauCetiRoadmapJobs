import Mathlib

/-!
# p-adic Hodge parameters in locally analytic representations of GL_n: target signatures

**This file is not the roadmap.** The roadmap is `README.md`. This file states the roadmap's
headline theorems against the pinned Mathlib and Tau Ceti, each with `sorry`, together with the
few definitions they need. At the pins none of them is statable, so the file states nothing; this
docstring records, for each headline theorem, the carrier it lacks.

The headline theorems are those of Ding, *p-adic Hodge parameters in the crystabelline
representations of GL_n* (Publ. Math. IHÉS 142, 2025), §3.2:

* **Ding's comparison theorem** (README §1.4; Theorem 3.21): the unique surjection
  `t_D : Ext¹_{GL_n(K)}(π_alg(φ,h), π_1(φ,h)) ↠ Ext¹(D,D)/Ext¹_0(D,D)` compatible with every
  refinement. It needs admissible locally ℚ_p-analytic representations of `GL_n(K)` with their Ext
  groups and the representations `π_alg(φ,h) ⊂ π_1(φ,h)` with the maps `ζ_w`, and
  (φ,Γ)-modules over the Robba ring `R_{K,E}` with the class `ΦΓ_nc(φ,h)`, the refinement deformation
  spaces and the parameter maps `κ_w`. Mathlib and Tau Ceti have none of these carriers.
* **The kernel dimension** (README §1.5; Remark 3.22(1)): `dim Ker t_D = (2^n − n(n+1)/2 − 1)·[K:ℚ_p]`.
  It is a statement about `t_D` and lacks the same carriers.
* **The characterisation of π_min(D)** (README §2.4; Corollary 3.25) by its first two socle layers
  and its Ext¹ group. It needs socles of admissible locally analytic representations besides the
  carriers above.
* **Central and infinitesimal characters of π_min(D)** (README §2.6; Proposition 3.26). It needs
  π_min(D), the derived action of `U(gl_n ⊗ E)` on a locally analytic representation, and the
  Harish-Chandra isomorphism for the split reductive `∏_σ gl_n` over a finite extension of `ℚ_p`
  (Tau Ceti's `TauCeti.hcProjection` assumes a Killing-semisimple Lie algebra).
* **Decomposition over the embeddings** (README §3.5; Corollary 3.31). It needs locally σ-analytic
  representations and the partially algebraic Ext groups.
* **The recovery theorem** (README §4.2; Theorem 3.34): `π_min(D)_σ ≅ π_min(D′)_σ` if and only if
  `D_σ ≅ D′_σ`. It needs, besides the above, the modified module `D_σ`, which needs B-pairs or the
  Berger modification of filtered modules over the Robba ring.
* **The universal Artinian action and the annihilator theorem** (README §§5.4–5.5; Theorem 3.36 and
  Corollary 3.37). They need deformation rings of (φ,Γ)-modules, the completed Bernstein centre of
  the principal-series block, and the universal extension of `π_alg(φ,h) ⊗ Ext¹(π_alg, π_1)` by
  `π_1(φ,h)`. Mathlib's `TrivSqZeroExt` supplies only the shape `E ⊕ Q^∨` of the first-order algebra
  once its tangent space `Q` exists.

The combinatorial and numerical statements of README Layer 0 and §1.1 (endpoint refinement
families, block character tuples and their telescoping spanning identity, the coefficient
`2^n − n(n+1)/2 − 1`) are statable but are not headline theorems: they are README targets and Checks.
-/

namespace TauCetiRoadmap.PadicHodgeParametersInLocallyAnalyticRepresentations

end TauCetiRoadmap.PadicHodgeParametersInLocallyAnalyticRepresentations
