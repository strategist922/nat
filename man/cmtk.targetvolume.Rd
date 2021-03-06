% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cmtk-reformat.R
\name{cmtk.targetvolume}
\alias{cmtk.targetvolume}
\alias{cmtk.targetvolume.im3d}
\alias{cmtk.targetvolume.list}
\alias{cmtk.targetvolume.default}
\title{Defines a target volume for a CMTK reformatx operation}
\usage{
cmtk.targetvolume(target, ...)

\method{cmtk.targetvolume}{im3d}(target, ...)

\method{cmtk.targetvolume}{list}(target, ...)

\method{cmtk.targetvolume}{default}(target, ...)
}
\arguments{
\item{target}{A character vector specifying an image file on disk, an
\code{im3d} object (or an object that can be coerced to im3d) or a 6-or
9-vector defining a grid in the form Nx,Ny,Nz,dX,dY,dZ,[Ox,Oy,Oz].}

\item{...}{additional arguments passed to methods}
}
\value{
a character vector specifying the full cmtk reformatx '--target' or 
  '--target-grid' argument
}
\description{
Defines a target volume for a CMTK reformatx operation

\code{cmtk.targetvolume.list} is designed to cope with any 
  user-defined class for which an as.im3d method exists. Presently the only
  example in the nat.* ecosystem is
  \code{nat.templatebrains::as.im3d.templatebrain}.
}
\details{
if the character vector specifies an amiramesh file, it will be 
  converted to a bare \code{im3d} object and then to an appropriate 
  '--target-grid' specification.
}
\examples{
\dontrun{
# see https://github.com/jefferislab/nat.flybrains
library(nat.flybrains)
cmtk.targetvolume(FCWB)
}
}
