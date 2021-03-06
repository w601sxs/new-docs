% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/callback.R
\name{mx.callback.early.stop}
\alias{mx.callback.early.stop}
\title{Early stop with different conditions}
\usage{
mx.callback.early.stop(train.metric = NULL, eval.metric = NULL,
  bad.steps = NULL, maximize = FALSE, verbose = FALSE)
}
\arguments{
\item{train.metric}{Numeric. Hard threshold for the metric of the training data set (optional)}

\item{eval.metric}{Numeric. Hard threshold for the metric of the evaluating data set (if set, optional)}

\item{bad.steps}{Integer. How much epochs should gone from the best score? Use this option with evaluation data set}

\item{maximize}{Logical. Do your model use maximizing or minimizing optimization?}

\item{verbose}{Logical}
}
\description{
Early stopping applying different conditions: hard thresholds or epochs number from the best score. Tested with "epoch.end.callback" function.
}

