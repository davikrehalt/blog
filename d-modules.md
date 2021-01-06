## D-modules

### Basic Functors
I assume smoothness where needed. A $D$-module is simply a quasicoherent sheaf with the action of differential operators (it can be generalized
to a relative setting where we look only at differential operators which map to zero on the base).
It comes in two types, left and right $D$-modules. We can switch between
them with the right $D$-module of top differential forms (relative top forms in the relative case).
For now, let's focus on the absolute case, the relative case being an easy generalization.
For all $D$-modules, there is a notion of pushforward and a notion of pullback. These notions rely on the following
$(f^{-1}D_Y,D_X)$-bimodule for a given map $f:X \to Y$

$$D_{Y \leftarrow X}:= \omega_X \otimes \omega_Y^{-1} \otimes f^{-1}D_Y$$

which is left-right switched from the pullback of $D_Y$ to $X$. The pushforward of a $D_X$-module $F$ is the quasicoherent pushforward of

$$D_{Y \leftarrow X} \otimes_{D_X} F$$

The pullback of a $D_Y$ module $F$ is just the quasicoherent pullback of $F$. Often it is shifted by relative dimension to make it compatible with Riemann-Hilbert.
We call the pushforward $f_+$ and the shifted pullback $f^+$. There is a general tensor product of $D$-modules. Pushforward along smooth maps corresponds to
a de Rham complex. These functors satisfy base-change, projection formula, push of box tensor is box tensor of push, Kunneth, etc. There is a duality functor
on coherent $D$-modules.

### Kashiwara's Equivalence

The point here is that D-modules supported on a closed subvariety is the same as D-modules on that subvariety. The proof here is by showing that a $D$-module
supported on a closed subvariety can have its functions graded by the order of vanishing, using the eigenvalues of a Casimir opertor

### Projective Space is $D$-Affine

Come back to this later.

### Holonomicity

Holonomic $D$-modules are $D$-modules with minimal singular support, that is support along the cotangent space. Singular support is defined via a filtration
of the $D$-module compatible with the order of the differential operators filtration on the $D$-ring. The associated graded is then a function on the cotangent
bundle.

Holonomicity can be checked by checking at all points and it is preserved by the six functors. Come back to this part.

### Crystals and E2-Hochschild Modules

Equivalence etc. to be continued.
