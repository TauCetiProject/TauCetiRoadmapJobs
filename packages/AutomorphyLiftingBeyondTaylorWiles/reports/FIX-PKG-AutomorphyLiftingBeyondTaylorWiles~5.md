# FIX-PKG-AutomorphyLiftingBeyondTaylorWiles~5

## F01 (P1) — applied

The finding is correct. In `packages/AutomorphyLiftingBeyondTaylorWiles/README.md` §5.8, old: "choose n distinct exponents and translate all of them by the inverse of n times their sum". New: fix a generator χ of the cyclic p-primary character group of k_x^× (order pᵃ, a≥1 since N(x)≡1 mod p, values in `mu_{p^a}` ⊂ 1+𝔪_O after coefficient extension), take distinct aᵢ∈ℤ/pᵃℤ, set aᵢ′=aᵢ−n⁻¹s with s=Σaⱼ and n⁻¹∈ℤ/pᵃℤ (it exists because p>n), and put `chi_{x,i} = chi^{a_i'}`. Two Checks added to §5.8: the reviewer's negative control, and an n=3 witness.

Verification (computed):

| Statement | Instance | Values | Result |
|---|---|---|---|
| Old text, read as a positive shift | n=2, p=5, N(x)=11, (0,1) | s=1, 2⁻¹=3; (3,4), sum 7≡2, product χ²≠1 | fails: the tuple is nontrivial on the diagonal scalars, so it is not a §0.1 datum |
| New subtraction | same | (0−3, 1−3)=(2,3), sum 5≡0, difference −1≠0 | product 1, distinct |
| New subtraction | n=3, p=5, (0,1,2) | s=3, 3⁻¹=2, n⁻¹s=1; (4,0,1), sum 5≡0 | product 1, distinct |
| Wrong model: shift by n·s | n=3, p=5, (0,1,2) | n·s=9≡4; subtracting 4 gives (1,2,3), sum 6≡1 | product χ≠1, excluded by the new Check |
| Existence of distinct exponents | general case | pᵃ≥p>n, so ℤ/pᵃℤ holds n distinct residues; n is a unit mod p | always possible |
| Degenerate case: N(x)≢1 mod p | any n | p-primary part trivial, so every character is trivial | already excluded by §1.1(b) and its Check; not used here |

Pattern search: I grepped the README and `Suggested.lean` for every other construction of pairwise distinct characters with product 1 ("product 1", "pairwise distinct", "χ_1", "∏"). §1.1 and §0.1 only *require* the product condition. Neither constructs the characters, so no other place needed a change.

## Checks

- `lake env lean packages/AutomorphyLiftingBeyondTaylorWiles/Suggested.lean` (run from the content checkout): exit 0, no output. `Suggested.lean` was not changed. It states no declarations (its docstring explains why), so there were no names to `#check` and no signatures to compare.
- Depcheck (`gate --depcheck … --movable`): `depcheck: 56 roadmaps, 649 edges, 0 problem(s)`. No UPWARD, CYCLE or moved line.
- Gate failure `tex=3`: the three TeX-style sub/superscripts outside code spans in §5.8 (`μ_{pᵃ}`, `χ_{x,i}`, `χ^{aᵢ′}`) are now ASCII code spans `mu_{p^a}` and `chi_{x,i} = chi^{a_i'}`. A scan of the README for `_{` or `^{` outside code spans now finds none. The mathematics is unchanged.

## Notes for the maintainer

- No Lean names changed and no supplier citations were added or changed, so no other roadmap is affected.
- No new sources were needed and `sources.toml` is unchanged. The only edit is in §5.8, so ownership was not affected and was not re-checked against the open pull requests.
- Nothing suspicious appeared in the review text.
