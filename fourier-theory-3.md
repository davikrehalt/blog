## Fourier Theory Part III: Generalizations

Luckily, now we are back to talking about nonsense instead of actually technical math. First let's talk about generalizing the Fourier Transform to a locally compact
Abelian group. To be honest, I'm not sure about classifications, but basically I think I see this category as just being built from 3 things. Circles, lines, and
cyclic groups. We've done lines, let's first now think about circles and cyclic groups as we attempt our generalization.

Yeah, so the point--the point is that somehow the dual of a LCH abelian group (or smooth or whatever structure I don't think it matters much) is the space of 
continuous group homomorphisms into a circle (don't ask me why), or basically it's like the space of simple representations (over $\mathbb{C}$)). So suppose $G$
is our group and $G^{\vee}$ is our space of simple representations. This space has to by its nature has a universal line bundle over it
with a representation of $G$ on it. Or equivalently, there's a line bundle over $BG \times G^{\vee}$, which gives a function on $G \times G^{\vee}$ by taking loop spaces (the loop space of $BS^1$ is $S^1$ which sits inside $\mathbb{C}^{\times}$)

In fact, because the group structure on $G^{\vee}$ is defined from tensor product of 1-dimensional representations, there's even a map
$$BG \times BG^{\vee} \to B^3\mathbb{Z}$$ 
(recall that $B\mathbb{Z} \cong S^1$ is the same as $\mathbb{C}^{\times}$ up to homotopy) 
Furthermore, there's infinitely many deloopings of this map extending it to a map of (manifold) spectra
$$G \times G^{\vee} \to S^1$$

In fact, I believe the above is basically the universal property for $G^{\vee}$.

All of our prior discussions hold here, but let's see it. We need to check two things. One, we need to check that the function respects the group structure
of $G$ and $G^{vee}$ and two, that it pushes down to the delta function.

For the fact that the function respects the group structure, we notice the following. A group homomorphism from $G$ to $\mathbb{C}^{\times}$ is the same
as a map from $BG$ to $B\mathbb{C}^{\times} \cong \mathbb{CP}^{\infty}$, which is the line bundle data we started with. Hence the group structure compatibility is basically automatic. 

The second property to check is equivalent to the statement that all nontrivial characters have zero integral. I think this basically follows from symmetry considerations.

Let's discuss a few additional generalizations I'm aware of.

There's a Fourier transform on affine space in the constructible/D-module category over $\mathbb{C}$. The defining sheaf is the exponential sheaf/D-module on affine space, pulled back to $\mathbb{A}^2$ via the multiplication map. Here the dual is something like $LocSys_{\mathbb{A}}$ or maybe group structure preserving local systems. We omit discussions on how to check the two criterions (group structure and delta pushforward) but it's relatively easy.

There's a Fourier transform on l-adic sheaves (or some generalizations of D-modules) onaffine spaces in the char $p$ setting, 
coming from characters of the Galois group of the Artin-Schrier covering. Thus there's sort
of a Frobenius interaction with these characters. With the sheaf-function correspondence, this corresponds to the Fourier transform on the cyclic group of order $p$. This is I guess intuitively some local system relative to $\mathbb{Z}$ on the char $p$ schemes.

There's a Fourier transform in $D$-modules in the setting of Abelian varieties. This takes $D$-modules on the variety to quasicoherent sheaves on the 
space/variety of local systems. The difference here is that in this setting, we lose the $D$-module structure on the target.
