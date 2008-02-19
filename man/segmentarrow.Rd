\name{segmentarrow}
\alias{segmentarrow}
\title{adds 3-segmented arrow between two points}
\description{Connects two points with 3 segments (default = left-vertical-right) 
   \cr adds an arrowhead on one of the segments at a certain distance}
\usage{segmentarrow(from, to, lwd=2, lty=1, lcol="black", arr.side=2,  
  arr.pos=0.5, path="LVR", dd=0.5, ...)}
\arguments{
  \item{from }{coordinates (x,y) of point *from* which to draw arrow}
  \item{to }{coordinates (x,y) of point *to* which to draw arrow}
  \item{lwd }{line width}
  \item{lty }{line type}
  \item{lcol }{line color}
  \item{arr.side }{segment number on which arrowhead is drawn (1,2,3)}
  \item{arr.pos }{relative position of arrowhead on segment on which arrowhead is drawn}
  \item{path }{outline of the 3 segments, default: left, vertical, right}
  \item{dd }{length of segment arm, directed away from endpoints}
  \item{... }{arguments passed to function straightarrow}
}
\value{
  coordinates (x,y) where arrowhead is drawn
}
\author{Karline Soetaert <k.soetaert@nioo.knaw.nl>}
\examples{openplotmat(main="segmentarrow")
  pos <-cbind(A<-seq(0.2,0.8,by=0.2),rev(A))
  text(pos,LETTERS[1:4],cex=2)
  segmentarrow(from=pos[1,]+c(0,0.05),to=pos[2,]+c(0,0.05),arr.pos=1,
               arr.adj=1,dd=0.1,path="UHD",lcol="darkred")
  segmentarrow(from=pos[2,]+c(-0.05,0),to=pos[3,]+c(-0.05,0.01),
               arr.pos=1,arr.adj=1,dd=0.1,lcol="black")
  segmentarrow(from=pos[2,]+c(0.05,0),to=pos[3,]+c(0.05,0.01),arr.pos=0.5,
               dd=0.3,path="RVL",arr.side=1,lcol="lightblue")  
  segmentarrow(from=pos[3,]+c(0.05,0),to=pos[4,]+c(-0.05,0.01),
               arr.pos=0.5,dd=0.05,path="RVL",lcol="darkblue")  
  segmentarrow(from=pos[3,]+c(0,0-.05),to=pos[4,]+c(0,0.05),arr.pos=0.5,
               arr.side=3,dd=0.05,path="DHU",lcol="darkgreen")  
  segmentarrow(from=pos[3,]+c(-0.05,-.05),to=pos[4,]+c(0,-0.05),
               arr.pos=0.5,arr.side=1:3,dd=0.3,path="DHU",lcol="green")}
\details{one segmented arrow is drawn between two points '(from, to)'
    
    how the segments are drawn is set with "path" which can take on the values:
   \item "LVR": first left then vertical then right
   \item "RVL": first right then vertical then left
   \item "UHD": first up then horizontal then down
   \item "DHU": first down then horizontal then up
  
    The segment(s) on which the arrow head is drawn is set with arr.side, which is one or more values in (1, 2, 3)
    \cr The position of the arrowhead, on the segment on which it is drawn, 
    is set with arr.pos, a value between 0(start of segment) and 1(end of segment)
  
    The type of the arrowhead is set with "arr.type" which can take the values:
    \item "simple"  : uses comparable R function arrows  
    \item "triangle": uses filled triangle
    \item "curved"  : draws arrowhead with curved edges
    \item "circle" : draws circular head 
  
   see \code{\link[shape]{Arrowhead}} from package shape for details on arrow head}
\seealso{\code{\link{straightarrow}}, \code{\link{bentarrow}}, \code{\link{curvedarrow}}, 
       \code{\link{selfarrow}}, \code{\link{treearrow}}, \code{\link{splitarrow}},    
       \cr \code{\link{arrows}}: the comparable R function,
       \cr \code{\link[shape]{Arrows}}: more complicated arrow function from package shape
       \cr try: demo(plotweb)}
\keyword{aplot}
