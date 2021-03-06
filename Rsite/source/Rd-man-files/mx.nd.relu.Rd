% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mxnet_generated.R
\name{mx.nd.relu}
\alias{mx.nd.relu}
\title{Computes rectified linear.}
\arguments{
\item{data}{NDArray-or-Symbol
The input array.}
}
\value{
out The result mx.ndarray
}
\description{
.. math::
   max(features, 0)
}
\details{
The storage type of ``relu`` output depends upon the input storage type:

- relu(default) = default
   - relu(row_sparse) = row_sparse
   - relu(csr) = csr



Defined in src/operator/tensor/elemwise_unary_op_basic.cc:L85
}

