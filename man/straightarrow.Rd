\name{straightarrow}
\alias{straightarrow}
\title{adds straight arrow between two points}
\description{
  Plots straight line between two points

  adds an arrowhead at a certain distance.
}

\usage{
straightarrow(from, to, lwd = 2, lty = 1, lcol = "black", 
              arr.col = lcol, arr.pos = 0.5, endhead = FALSE, 
              segment = c(0,1), ...)
}

\arguments{
  \item{from }{coordinates (x,y) of the point *from* which to draw arrow.
  }
  \item{to }{coordinates (x,y) of the point *to* which to draw arrow.
  }
  \item{lwd }{line width.
  }
  \item{lty }{line type.
  }
  \item{lcol }{line color.
  }
  \item{arr.col }{arrow color.
  }
  \item{arr.pos }{relative position of arrowhead.}
  
  \item{endhead }{if \code{TRUE}: the arrow line stops at the arrowhead;
    default = \code{FALSE}.
  }
  \item{segment }{if not \code{c(0,1)}: then the arrow line will cover only 
    part of the requested path, 
    e.g. if segment = c(0.2,0.8), it will start 0.2 from \code{from} and
    till 0.8.
  }
  \item{... }{arguments passed to function \link[shape]{Arrows}.
  }
}
\value{
  coordinates (x,y) where arrowhead is drawn
}
\author{Karline Soetaert <karline.soetaert@nioz.nl>}
\examples{
openplotmat(main = "straightarrow")

pos <- coordinates(c(2, 3, 1))

for (i in 1:5) 
  straightarrow(from = pos[i, ], to = pos[i+1, ], arr.pos = 0.5)

straightarrow(from = pos[6, ], to = pos[6, ] + c(0.3, 0.), 
              arr.type = "T", arr.pos = 1, arr.lwd = 3)    

for (i in 1:6) 
  textrect(pos[i, ], lab = LETTERS[i], radx = 0.05)
}

\details{a straight arrow is drawn between the points '(\code{from},
  \code{to})'
  The position of the arrowhead, is set with \code{arr.pos}, a value between
  0(start point) and 1(endpoint)
  
  The type of the arrowhead is set with \code{arr.type} which can take
  the values:
  \itemize{
    \item "none"    : skips the drawing of arrows.
    \item "simple"  : uses comparable \R function \link{arrows}.
    \item "triangle": uses filled triangle.
    \item "curved"  : draws arrowhead with curved edges.
    \item "circle"  : draws circular head.
    \item "ellipse" : draws ellepsoid head.
    \item "T"       : draws T-shaped (blunt) head.
  }
  The size of the arrow head can be specified with the arguments 
  \code{arr.length} and \code{arr.width}.

  See \code{\link[shape]{Arrowhead}} from package shape for details on
  arrow head.
}

\seealso{
  \code{\link{bentarrow}}, \code{\link{segmentarrow}}, \code{\link{curvedarrow}}
  \code{\link{selfarrow}}, \code{\link{splitarrow}}, \code{\link{treearrow}},

  \code{\link{arrows}}: the comparable R function,

  \code{\link[shape]{Arrows}}: more complicated arrow function from package
  shape.
}

\keyword{aplot}

