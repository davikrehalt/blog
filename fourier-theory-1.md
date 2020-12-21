## Fourier Theory Part I: Turning convolution into multiplication

Previously, the posts have presented a vision of homological algebra devoid of chain complexes and what-nots and replacing them fully with spectra,
the stablization of spaces. This approach is versatile and frankly better in all regards. But here we shift focus to some actual maths for a bit.

First off is Fourier theory, which deserves to be explained by someone who understands it better, but here you are. Let's start off with the classics.
The one and only, classical Fourier transform (up to some constants who nobody cares (but maybe we should?))

$$\mathcal{F}(f) := \int_{\mathbb{R}}{f(x)e^{2 \pi i x t} dx}$$

Beautiful, no? Transforming function space to character space (I guess frequency space is what most sane people call it). And we have some theorems about turning
convolutions to products. Let's see that (WARNING: technical math ahead). The key idea here is of course the following identity.

$$(\mu \times id)^*P \cong \pi_{1,3}^*P \otimes \pi_{2,3}^*P$$

You're probably thinking WTF at this moment, where are any of this symbols coming from?
Well, $P$ is the name I've given to the function $e^{2 \pi i t x}$ defined over $\mathbb{A}^2$ ($\mathbb{A}$ is just $\mathbb{R}$ for now).
And the upper star symbol means pullback along the various maps.
$\mu$ is the addition map $\mathbb{A}^2 \to \mathbb{A}^1$ 
(sending $(x,y)$ to $x+y$),
which is the group operation for $A^1$ as a group, which is where this Fourier transform is happening. 
Hence $(\mu \times id)^*P$ just means $e^{2 \pi i t (x_1 + x_2)}$.
Now, $pi_{1,3}$ is the projection from $\mathbb{A}^3$ to 
$\mathbb{A}^2$ by projecting to the first and third coordinates, and $\pi_{2,3}$ is of course similarly defined. Hence all that weird identity says is:

$$e^{2 \pi t (x_1 + x_2)} = e^{2 \pi t x_1} e^{2 \pi t x_2}$$

The point--the point is that I want to think of the fourier transform as follows (the $\otimes$ is just multiplication here--later when we categorify
it will become tensor)

$$\mathcal{F}(f) := \pi_{2,*}(\pi_1^*f \otimes P)$$

where the pushforward to the second variable (named t) is implemented by the integral along x. 

Now let's see how this identity helps us turn convolution to multiplication. Convolution is defined by 

$$(f \star g)(x) := \int_{\mathbb{R}}{f(y)g(x-y) dy}$$

But we'll call rewrite this as:

$$f \star g := \mu_*(p_1^*f \otimes p_2^*g)$$

via our fake categorification notation (Here we're using $p_1$ and $p_2$ as the two projection maps.
The pushforward is an integration along the fibre. At this point, maybe before, you may be thinking about convergence issues,
or where these $f$'s and $g$'s are living in. Are they functions? compactly supported? distributions? Well, unfortunately this blog isn't rigorous enough to be talking about these things. Sorry.

But anyhow, now we're all set to turn convolutions into products. Ready?

$$\begin{aligned}
\mathcal{F}(f \star g)
&\cong \mathcal{F}(\mu_*(p_1^*f \otimes p_2^*g)) \\
&\cong \pi_{2,*}(P \otimes \pi_1^*(\mu_*(p_1^*f \otimes p_2^*g)))
\end{aligned}$$

In function language, it says

$$\begin{aligned}
\mathcal{F}(f \star g)(t)
&= \mathcal{F}(\int_{\mathbb{R}}{f(y)g(x-y) dy}) \\
&= \int_{\mathbb{R}}{\left(e^{2 \pi x t}\int_{\mathbb{R}}{f(y)g(x-y) dy}\right)dx}
\end{aligned}$$


But essentially so far nothing has happened. We just wrote down some definitions.
Now we look at the following pullback diagram.

$$\require{AMScd}
\begin{CD}
\mathbb{A}^{(1)} \times \mathbb{A}^{(2)} \times \mathbb{A}^t @>{\lambda}>> \mathbb{A} \times \mathbb{A}^t;\\
@V{\chi}VV @V{\pi_1}VV \\
\mathbb{A}^{(1)} \times \mathbb{A}^{(2)} @>{\mu}>> \mathbb{A};
\end{CD}$$

Where above $\mathbb{A}^t$ is also just $\mathbb{A} \cong \mathbb{R}$ but it named that way to represent the frequency domain. The upper index of $(1)$
and $(2)$ are just there for numbering.

What does this allow us to do? In categorical language, we now have 

$$\begin{aligned}
\mathcal{F}(f \star g)
&\cong \pi_{2,*}(P \otimes \pi_1^*(\mu_*(p_1^*f \otimes p_2^*g))) \\
& \cong \pi_{2,*}(P \otimes \lambda_*\chi^*(p_1^*f \otimes p_2^*g)) \\
& \cong \pi_{2,*}(\lambda_*(\lambda^*P \otimes \chi^*(p_1^*f \otimes p_2^*g))) \\
\end{aligned}$$

Where in the second line we are using what is called base-change and in the third line we are using what is called the projection formula.
But what does that translate to in down-to-earth terms? Let's translate the above into normal function notation and see. The base-change
is trivial in the function case. (Interesting side remark here: If you try to prove these statements in some formal system, you will have
to show this "trivial" step; so maybe formal systems make you categorify your proofs?) The projection formula, sadly, also says nothing more than
just that you can take the function into the integral. So all that fancyness translates to:

$$\begin{aligned}
\mathcal{F}(f \star g)(t)
&= \int_{\mathbb{R}}{\left(e^{2 \pi x t}\int_{\mathbb{R}}{f(y)g(x-y) dy}\right)dx}\\
&= \int_{\mathbb{R}}{\left(\int_{\mathbb{R}}{e^{2 \pi x t} f(y)g(x-y) dy}\right)dx}\\
\end{aligned}$$

Next we (finally!) have to use our magic (trivial?) identity we stated above as we foreshadowed. Let's see the categorical case first:

$$\begin{aligned}
\mathcal{F}(f \star g)
& \cong \pi_{2,*}(\lambda_*(\lambda^*P \otimes \chi^*(p_1^*f \otimes p_2^*g))) \\
& \cong \pi_{2,*}(\lambda_*(s_1^*P \otimes s_2^*P \otimes \chi^*(p_1^*f \otimes p_2^*g))) \\
\end{aligned}$$

where $s_1: \mathbb{A}^{(1)} \times \mathbb{A}^{(2)} \times \mathbb{A}^t \to \mathbb{A}^{(1)} \times \mathbb{A}^t$ and 
$s_2: \mathbb{A}^{(1)} \times \mathbb{A}^{(2)} \times \mathbb{A}^t \to \mathbb{A}^{(2)} \times \mathbb{A}^t$. Then the next step is easy, so
let's include it too

$$\begin{aligned}
\mathcal{F}(f \star g)
& \cong \pi_{2,*}(\lambda_*(s_1^*P \otimes s_2^*P \otimes \chi^*(p_1^*f \otimes p_2^*g))) \\
& \cong \pi_{2,*}(\lambda_*(s_1^*P \otimes s_2^*P \otimes s_1^*q_1^*f \otimes s_2^*q_2^*g)) \\
\end{aligned}$$

where $q_i$ is the projection map from $\mathbb{A}^{(i)} \times \mathbb{A}^t \to \mathbb{A}^{(i)}$.

In function language, again all this is super simple:

$$\begin{aligned}
\mathcal{F}(f \star g)(t)
& = \int_{\mathbb{R}}{\left(\int_{\mathbb{R}}{e^{2 \pi x t} f(y)g(x-y) dy}\right)dx}\\
& = \int_{\mathbb{R}}{\left(\int_{\mathbb{R}}{e^{2 \pi y t}e^{2 \pi (x-y) t}f(y)g(x-y) dy}\right)dx}\\
\end{aligned}$$

Don't worry, we'll almost done. We need a Kunneth theorem next (in functions this is basically Fubini's theorem). The proof until the end
in the categorical language is

$$\begin{aligned}
\mathcal{F}(f \star g)
& \cong \pi_{2,*}(\lambda_*(s_1^*P \otimes s_2^*P \otimes s_1^*q_1^*f \otimes s_2^*q_2^*g)) \\
& \cong \pi_{2,*}(\lambda_*(s_1^*(P \otimes q_1^*f) \otimes s_2^*(P \otimes q_2^*g)) \\
& \cong w_{1,*}(P \otimes q_1^*f) \otimes w_{2,*}(P \otimes q_2^*g) \\
& \cong \mathcal{F}_A(f) \otimes \mathcal{F}_A(g)
\end{aligned}$$

where the first two lines are obvious and the last line is by definition. Here $w_i:\mathbb{A}^{(i)} \times \mathbb{A}^t \to \mathbb{A}^t$
is the projection map and we have the following pullback square.

$$\require{AMScd}
\begin{CD}
\mathbb{A}^{(1)} \times \mathbb{A}^{(2)} \times \mathbb{A}^t @>{s_2}>> \mathbb{A}^{(2)} \times \mathbb{A}^t;\\
@V{s_1}VV @V{w_2}VV \\
\mathbb{A}^{(1)} \times \mathbb{A}^t @>{w_1}>> \mathbb{A}^t;
\end{CD}$$

And it is this pullback square that we had to use Kunneth on. But again translating to function language we just have: 
(also the obviousness of the function statement is a testament to the fact that Kunneth follows from the projection formula)
$$\begin{aligned}
\mathcal{F}(f \star g)(t)
&= \int_{\mathbb{R}}{\left(\int_{\mathbb{R}}{e^{2 \pi y t}e^{2 \pi (x-y) t}f(y)g(x-y) dy}\right)dx}\\
&= \int_{\mathbb{R}}{\left(\int_{\mathbb{R}}{e^{2 \pi y t}e^{2 \pi z t}f(y)g(z) dy}\right)dz}\\
&= \int_{\mathbb{R}}{e^{2 \pi y t} f(y) dy}\int_{\mathbb{R}}{e^{2 \pi z t} f(z) dz}\\
&=\mathcal{F}(f)(t)\mathcal{F}(g)(t)\\
\end{aligned}$$

Ta-da we're done. We've successfully turned a simple proof into a complicated one. Let's continue next time with inversion. Remember what we needed here:
$P$ respects the group operation, Kunneth, base-change, and projection formula.
