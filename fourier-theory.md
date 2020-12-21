## Fourier Theory

Previously, the posts have presented a vision of homological algebra devoid of chain complexes and what-nots and replacing them fully with spectra,
the stablization of spaces. This approach is versatile and frankly better in all regards. But here we shift focus to some actual maths for a bit.

First off is Fourier theory, which deserves to be explained by someone who understands it better, but here you are. Let's start off with the classics.
The one and only, classical Fourier transform (up to some constants who nobody cares (but maybe we should?))

$$\mathcal{F}(f) := \int_{\mathbb{R}}{f(x)e^{2 \pi i t x} dx}$$

Beautiful, no? Transforming function space to character space (I guess frequency space is what most sane people call it). And we have some theorems about turning
convolutions to products. Let's see that. The key idea here is of course the following identity.

$$(\mu \times id)^*P \cong \pi_{1,3}^*P \otimes \pi_{2,3}^*P$$

You're probably thinking WTF at this moment, where is any of this symbols coming from?
The point, the point is that I want to think of the fourier transform as follows, where the $\otimes$ is just multiplication here--later when we categorify
it will become tensor.

$$\mathcal{F}(f) := \pi_{2,*}(\pi_1^*f \otimes P)$$

where $P$ is the function $e^{2 \pi i t x}$ defined over $\mathbb{A}^2=\mathbb{R}^2$ and the pushforward is implemented by the integral. Hence all that
the weird identity above says is the following (I should note that $\mu$ is the addition map $\mathbb{A}^2 \to \mathbb{A}^1$)

$$e^{2 \pi t (x_1 + x_2)} = e^{2 \pi t x_1} e^{2 \pi t x_2}$$
