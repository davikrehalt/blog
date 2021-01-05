## D-modules

A $D$-module is simply a quasicoherent sheaf with the action of differential operators (it can be generalized
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
We call the pushforward $f_+$ and the shifted pullback $f^+$.

