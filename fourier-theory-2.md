## Fourier Theory Part II: Turning Back

Last time, we talked about Fourier transforms and how it turns convolution into multiplication. This time, let's talk Fourier inversion.

Recall that our Fourier transform in categorical language is 

$$\mathcal{F}(f) := \pi_{2,*}(\pi_1^*f \otimes P)$$

where $P$ in our classical case was represented by $e^{2 \pi i x t}$

And we'll again need our pullback diagrams, which I'll copy down from before.

$$\require{AMScd}
\begin{CD}
\mathbb{A}^{(1)} \times \mathbb{A}^{(2)} \times \mathbb{A}^t @>{\lambda}>> \mathbb{A} \times \mathbb{A}^t;\\
@V{\chi}VV @V{\pi_1}VV \\
\mathbb{A}^{(1)} \times \mathbb{A}^{(2)} @>{\mu}>> \mathbb{A};
\end{CD}$$

$$\require{AMScd}
\begin{CD}
\mathbb{A}^{(1)} \times \mathbb{A}^{(2)} \times \mathbb{A}^t @>{s_2}>> \mathbb{A}^{(2)} \times \mathbb{A}^t;\\
@V{s_1}VV @V{w_2}VV \\
\mathbb{A}^{(1)} \times \mathbb{A}^t @>{w_1}>> \mathbb{A}^t;
\end{CD}$$

$\pi_1,\pi_2$ are projections out of $\mathbb{A} \times \mathbb{A}^t$, $p_1,p_2$ are the projections out of $\mathbb{A}^{(1)} \times \mathbb{A}^{(2)}$,
and $w_i : \mathbb{A}^{(i)} \times \mathbb{A}^t \to \mathbb{A}^{(i)}$ is the projection to the first component.

Without further ado, let's jump into the statement and proof of inversion. As we are working over the additive group $\mathbb{A} \cong \mathbb{R}$,
we also have $\mathbb{A}^t \cong \mathbb{R}$ and the dual transform (note we don't say inverse because there's some intricacies) is given simply by

$$\mathcal{F}^t(f) := \pi_{1,*}(\pi_2^*f \otimes P)$$

Now let's investigate $\mathcal{F}^t(\mathcal{F}(f))$.

$$ \begin{align}
\mathcal{F}^t(\mathcal{F}(f))
& \cong \mathcal{F}_{2,*}(w_{1,*}(q_1^*F \otimes P))\\
& \cong q_{2,*}(w_2^*(w_{1,*}(q_1^*F \otimes P)) \otimes P)\\
& \cong q_{2,*}(s_{2,*}s_1^*(q_1^*F \otimes P) \otimes P)\\
& \cong q_{2,*}(s_{2,*}(s_1^*(q_1^*F) \otimes s_1^*P) \otimes P)\\
& \cong q_{2,*}(s_{2,*}(s_1^*(q_1^*F) \otimes s_1^*P \otimes s_2^*P))\\
& \cong p_{2,*}r_*(r^*p_1^*F \otimes \lambda^*P)\\
& \cong p_{2,*}(p_1^*F \otimes r_*\lambda^*P)\\
& \cong p_{2,*}(p_1^*F \otimes \mu^*\pi_{A,*}P)\\
& \cong p_{2,*}(p_1^*F \otimes \mu^*\delta[-g])\\
& \cong p_{2,*}(p_1^*F \otimes \mathcal{O_Z}[-g])\\
& \cong \langle -1 \rangle^*F[-g]\\
\end{align}
$$

