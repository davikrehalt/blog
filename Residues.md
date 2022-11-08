## Instances of Residue Theory (and Boundary maps in topology)

Let's start with the childhood version of residue theory, which is when we have a meromorphic function on the complex projective line. Then
the sum of the residues at points add to 0. This is witnessed by the following exact sequence.

$$0 \to \mathcal{O}^{\times} \to K^{\times} \to K^{\times}/\mathcal{O}^{\times} \to H^1(\mathcal{O}^{\times}) \to 0$$

The second version we'll discuss is residue via integration of top differential forms. On compact complex manifolds (and also
complex manifolds completed at a compact subset), we have the top differential form (maybe completed) can be integrated via adjunction data.

$$p_*(\omega_X) \to \mathbb{C}$$

where $p : X \to \mathbb{C}$ is the projection map. Now for curves
$$H^0(\omega) = H^1(\Omega^1)$$
and we can create instances of the second object via covers of the algebraic curve. In particular, we can get objects there that come from
a differential form supported on a real curve (like a circle). In fact I believe all nontrivial elements are obtained this way. That is for
any class of a real curve $S \to C$, there's a map

$$H^0(\Gamma_S\omega) \to H^0(\omega) \to \mathbb{C}$$

which is contour integration (the left hand side is a hyperfunction on S.

