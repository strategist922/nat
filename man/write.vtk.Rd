% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vtk-io.R
\name{write.vtk}
\alias{write.vtk}
\alias{write.vtk.neuron}
\title{Write object to VTK file}
\usage{
write.vtk(x, file, ...)

\method{write.vtk}{neuron}(x, file, datatype = c("float", "double"),
  title = file, WriteAllSubTrees = TRUE, ...)
}
\arguments{
\item{x}{Object to write}

\item{file}{Path to output file}

\item{...}{Additional arguments to methods}

\item{datatype}{The VTK data type (one of float or double)}

\item{title}{Title of the .vtk file (defaults to file)}

\item{WriteAllSubTrees}{Whether to write all subtrees in the neuron or just 
the main tree.}
}
\description{
Write object to VTK file
}
\examples{
\dontrun{
n=Cell07PNs[[1]]
write.vtk(n, paste0(n$NeuronName, ".vtk"))
write.neuron(n, paste0(n$NeuronName, ".vtk"))
}
}
