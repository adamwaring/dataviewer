% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fct_argonCard_helper.R
\name{argonCard_helper}
\alias{argonCard_helper}
\title{argonCard_helper}
\usage{
argonCard_helper(title, icon, status, ...)
}
\arguments{
\item{title}{Title for the Card}

\item{icon}{Icon to display - must be wrapped in icon() or equivalent}

\item{status}{Bootstrap classes primary info secondary danger warning etc...}

\item{...}{any number of additional shiny tags}
}
\value{
shiny.tag
}
\description{
Creates new defaults for argonCard to give consistent look throughout app
}
