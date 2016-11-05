#!/usr/bin/env Rscript

####################
#
#   July 19, 2016
#
#
#
#
#####################

library( ggplot2 )
library( rmarkdown )

srcDir <- "./"
buildrmd <- 'hs3.Rmd'

########   Morning    ##########

# Retrospective

rawrmds <- c( "format.Rmd",
              "hs3Content.Rmd"
               )

for ( x in 1:length( rawrmds ) ) {
  if ( x == 1 )
    {
    cmd<-paste( "cat ", rawrmds[x], " > ", buildrmd )
    } else {
      cmd<-paste( "cat ", rawrmds[x], " >> ", buildrmd )
    }
  system( cmd )
  }

render( buildrmd, clean = TRUE )
