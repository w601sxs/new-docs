% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mxnet_generated.R
\name{mx.symbol.rmspropalex_update}
\alias{mx.symbol.rmspropalex_update}
\title{rmspropalex_update:Update function for RMSPropAlex optimizer.}
\usage{
mx.symbol.rmspropalex_update(...)
}
\arguments{
\item{weight}{NDArray-or-Symbol
Weight}

\item{grad}{NDArray-or-Symbol
Gradient}

\item{n}{NDArray-or-Symbol
n}

\item{g}{NDArray-or-Symbol
g}

\item{delta}{NDArray-or-Symbol
delta}

\item{lr}{float, required
Learning rate}

\item{gamma1}{float, optional, default=0.95
Decay rate.}

\item{gamma2}{float, optional, default=0.9
Decay rate.}

\item{epsilon}{float, optional, default=1e-08
A small constant for numerical stability.}

\item{wd}{float, optional, default=0
Weight decay augments the objective function with a regularization term that penalizes large weights. The penalty scales with the square of the magnitude of each weight.}

\item{rescale.grad}{float, optional, default=1
Rescale gradient to grad = rescale_grad*grad.}

\item{clip.gradient}{float, optional, default=-1
Clip gradient to the range of [-clip_gradient, clip_gradient] If clip_gradient <= 0, gradient clipping is turned off. grad = max(min(grad, clip_gradient), -clip_gradient).}

\item{clip.weights}{float, optional, default=-1
Clip weights to the range of [-clip_weights, clip_weights] If clip_weights <= 0, weight clipping is turned off. weights = max(min(weights, clip_weights), -clip_weights).}

\item{name}{string, optional
Name of the resulting symbol.}
}
\value{
out The result mx.symbol
}
\description{
`RMSPropAlex` is non-centered version of `RMSProp`.
}
\details{
Define :math:`E[g^2]_t` is the decaying average over past squared gradient and
:math:`E[g]_t` is the decaying average over past gradient.

.. math::
  E[g^2]_t = \gamma_1 * E[g^2]_{t-1} + (1 - \gamma_1) * g_t^2\\
  E[g]_t = \gamma_1 * E[g]_{t-1} + (1 - \gamma_1) * g_t\\
  \Delta_t = \gamma_2 * \Delta_{t-1} - \frac{\eta}{\sqrt{E[g^2]_t - E[g]_t^2 + \epsilon}} g_t\\

The update step is

.. math::
  \theta_{t+1} = \theta_t + \Delta_t

The RMSPropAlex code follows the version in
http://arxiv.org/pdf/1308.0850v5.pdf Eq(38) - Eq(45) by Alex Graves, 2013.

Graves suggests the momentum term :math:`\gamma_1` to be 0.95, :math:`\gamma_2`
to be 0.9 and the learning rate :math:`\eta` to be 0.0001.

Defined in src/operator/optimizer_op.cc:L592
}

