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
,$q_i : \mathbb{A}^{(i)} \times \mathbb{A}^t \to \mathbb{A}^{(i)}$ is the projection to the first component,
and $w_i : \mathbb{A}^{(i)} \times \mathbb{A}^t \to \mathbb{A}^t$ is the projection to the second component.

Without further ado, let's jump into the statement and proof of inversion. As we are working over the additive group $\mathbb{A} \cong \mathbb{R}$,
we also have $\mathbb{A}^t \cong \mathbb{R}$ and the dual transform (note we don't say inverse because there's some intricacies) is given simply by

$$\mathcal{F}^t(f) := \pi_{1,*}(\pi_2^*f \otimes P)$$

This is actually different from standard notation precisely because it doesn't really lead to an inverse, even
up to a constant (there's a reflection involved!). Anyway, let's investigate $\mathcal{F}^t(\mathcal{F}(f))$.

$$ \begin{align}
\mathcal{F}^t(\mathcal{F}(f))
& \cong \mathcal{F}^t(w_{1,*}(q_1^*F \otimes P))\\
& \cong q_{2,*}(w_2^*(w_{1,*}(q_1^*F \otimes P)) \otimes P)\\
& \cong q_{2,*}(s_{2,*}s_1^*(q_1^*F \otimes P) \otimes P)\\
& \cong q_{2,*}(s_{2,*}(s_1^*(q_1^*F) \otimes s_1^*P) \otimes P)\\
& \cong q_{2,*}(s_{2,*}(s_1^*(q_1^*F) \otimes s_1^*P \otimes s_2^*P))\\
& \cong p_{2,*}r_*(r^*p_1^*F \otimes \lambda^*P)\\
& \cong p_{2,*}(p_1^*F \otimes r_*\lambda^*P)\\
& \cong p_{2,*}(p_1^*F \otimes \mu^*\pi_{1,*}P)\\
\end{align}
$$

What we're using is projection formula, base-change and the fact that tensor distributes over pullback--all trivial in the function case. But since it's a lot
of steps let's see what the function notation translation of the above is.

$$ \begin{align}
\mathcal{F}^t(\mathcal{F}(f))(\xi)
& =\int_{\mathbb{R}}{e^{2 \pi i \xi t}\int_{\mathbb{R}}{f(x)e^{2 \pi i x t} dx} dt}\\
& =\int_{\mathbb{R}}{\int_{\mathbb{R}}{f(x)e^{2 \pi i x t}e^{2 \pi i \xi t} dx} dt}\\
& =\int_{\mathbb{R}}{\int_{\mathbb{R}}{f(x)e^{2 \pi i (x + \xi) t} dx} dt}\\
& =\int_{\mathbb{R}}{f(x) \int_{\mathbb{R}}{e^{2 \pi i (x + \xi) t} dt} dx}\\
\end{align}
$$

Now the key input for us is this computation of $\pi_{1,*}P$ (which is related to this last integral inside),
which will turn out to be some skyscraper sheaf thingly supported at the origin and
in function notation it will be some delta function/distribution at the origin. In fact it will be $\frac{1}{2 \pi} \delta(u)$ for us because
of the $2 \pi$ in the exponent, which tbh I'm not sure why it should be there. But anyhow, once we pull it back along $\mu$ it will be supported at the 
"anti-diagonal", and hence in function language there's a reflection. Basically--basically, it is 

$$ \begin{align}
\mathcal{F}^t(\mathcal{F}(f))
& \cong p_{2,*}(p_1^*f \otimes \mu^*\delta)\\
& \cong p_{2,*}(p_1^*F \otimes \mathcal{O_Z})\\
& \cong \langle -1 \rangle^*f\\
\end{align} $$

For categorical notation (Z is the anti-diagonal), and for function notation it is 

$$ \begin{align}
\mathcal{F}^t(\mathcal{F}(f))(\xi)
& =\int_{\mathbb{R}}{f(x) \int_{\mathbb{R}}{e^{2 \pi i (x + \xi) t} dt} dx}\\
& =\int_{\mathbb{R}}{\frac{f(x) \delta(x+\xi)}{2 \pi} dx}\\
&=\frac{f(-\xi)}{2 \pi}
\end{align}
$$

We'll continue next time with less technical stuff and talk about generalizations of Fourier Theory.
