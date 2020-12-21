## Fourier Theory

Previously, the posts have presented a vision of homological algebra devoid of chain complexes and what-nots and replacing them fully with spectra,
the stablization of spaces. This approach is versatile and frankly better in all regards. But here we shift focus to some actual maths for a bit.

First off is Fourier theory, which deserves to be explained by someone who understands it better, but here you are. Let's start off with the classics.
The one and only, classical Fourier transform (up to some constants who nobody cares (but maybe we should?))

$$\mathcal{F}(f) := \int_{\mathbb{R}}{f(x)e^{2 \pi i x t} dx}$$

Beautiful, no? Transforming function space to character space (I guess frequency space is what most sane people call it). And we have some theorems about turning
convolutions to products. Let's see that. The key idea here is of course the following identity.

$$(\mu \times id)^*P \cong \pi_{1,3}^*P \otimes \pi_{2,3}^*P$$

You're probably thinking WTF at this moment, where are any of this symbols coming from?
The point--the point is that I want to think of the fourier transform as follows, where the $\otimes$ is just multiplication here--later when we categorify
it will become tensor.

$$\mathcal{F}(f) := \pi_{2,*}(\pi_1^*f \otimes P)$$

where $P$ is the function $e^{2 \pi i t x}$ defined over $\mathbb{A}^2$ ($\mathbb{A}$ is just $\mathbb{R}$ for now)
and the pushforward is implemented by the integral. Hence all that
the weird identity with $(\mu \times id)^*P$ above says is the following. I should note first that $\mu$ is the addition map $\mathbb{A}^2 \to \mathbb{A}^1$,
which is the group operation for $A^1$ as a group, which is where this Fourier transform is happening. $pi_{1,3}$ is the projection from $\mathbb{A}^3$ to 
$\mathbb{A}^2$ by projecting to the first and third coordinates, and $\pi_{2,3}$ is of course similarly defined.

$$e^{2 \pi t (x_1 + x_2)} = e^{2 \pi t x_1} e^{2 \pi t x_2}$$

Now let's see how this weird identity helps us turn convolution to multiplication. Convolution is defined by 

$$(f \star g)(x) := \int_{\mathbb{R}}{f(t)g(x-t) dt}$$

But we'll call rewrite this as:

$$f \star g := \mu_*(\pi_1^*f \otimes \pi_2^*g)$$

via a fake categorification notation. The pushforward is an integration along the fibre. At this point, maybe before, you may be thinking about convergence issues,
or where these $f$'s and $g$'s are living in. Are they functions? compactly supported? distributions? Well, unfortunately this blog isn't rigorous enough to be talking about these things. Sorry.

But anyhow, now we're all set to turn convolutions into products. Ready?

$$\begin{aligned}
\mathcal{F}(f \star g)
&= \mathcal{F}(\mu_*(\pi_1^*f \otimes \pi_2^*g))
&= \pi_{2,*}(P \otimes \pi_1^*(\mu_*(\pi_1^*f \otimes \pi_2^*g)))
\end{aligned}$$

In function language, and in the categorical language too, so far nothing has happened. We just wrote down some definitions.
Now we look at a commutative diagram.

$$\require{AMScd}
\begin{CD}
\mathbb{A}^{(1)} \times \mathbb{A}^{(2)} \times \mathbb{A}^t @>{\lambda}>> \mathbb{A} \times \mathbb{A}^t;\\
@V{\chi}VV @V{\pi_1}VV \\
\mathbb{A}^{(1)} \times \mathbb{A}^{(2)} @>{\my}>> \mathbb{A};
\end{CD}$$

Where above $\mathbb{A}^t$ is also just $\mathbb{A} \cong \mathbb{R}$ but it named that way to represent the frequency domain. The upper index of $(1)$
and $(2)$ are just there for numbering.
