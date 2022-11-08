## Instances of Residue Theory (and Boundary maps in topology)

Let's start with the childhood version of residue theory, which is when we have a meromorphic function on the complex projective line. Then
the sum of the residues at points add to 0. This is witnessed by the following exact sequence.

$$0 \to \mathcal{O}^{\times} \to K^{\times} \to K^{\times}/\mathcal{O}^{\times} \to H^1(\mathcal{O}^{\times}) \to 0$$

The second version we'll discuss is residue via integration of differential forms. On compact complex manifolds (and also
complex manifolds completed at a compact subset), we have the top differential form (maybe completed) can be integrated via adjunction data.

$$p_*(\omega_X) \to \mathbb{C}$$

where $p : X \to \mathbb{C}$ is the projection map. Now for curves
$$H^0(\omega_X) = H^1(\Omega^1_X)$$
and we can create instances of the second object via covers of the algebraic curve. In particular, we can get objects there that come from
a differential form supported on a real curve (like a circle). In fact I believe all nontrivial elements are obtained this way. That is for
any class of a real curve $S \to C$, there's a map

$$H^0(\Gamma_S\omega_X) \to H^0(\omega_X) \to \mathbb{C}$$

which is contour integration (the left hand side is a hyperfunction on S.

But by the residue theorem, the contour integration of a meromorphic function/differential form should come from its residues. This follows
from the statement the contour can be deformed to infinitesimal contours along the residues, since on holomorphic things the deformation is trivial.

As a side remark, the integration of cycles and forms descends to homology and cohomology classes via instances of stokes theorem.
And the pairing above should appear in hodge theory in $H^{0,n}$ and $H^{n,0}$ pairings, via something explicit.

Now let's turn to the case of interest in this post, which is Brauer classes on number fields.
