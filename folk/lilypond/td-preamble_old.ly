%{
td-preamble
%}

\version "2.12.3"

noteFix = { \once \override Stem #'X-extent = #'(2 . 8) }
noteFi = { \once \override Stem #'X-extent = #'(2 . 4) }
noteF = { \once \override Stem #'X-extent = #'(2 . 2) }

par = {  
 	\override ParenthesesItem #'padding = #0.2
	\override ParenthesesItem #'font-size = #6 
}

parG = {
  	\override ParenthesesItem #'padding = #0.15
  	\override ParenthesesItem #'font-size = #1  
}

parS = {
  	\override ParenthesesItem #'padding = #0.1
  	\override ParenthesesItem #'font-size = #-2  
}

fixB = { \override Stem #'transparent = ##t  }  
fixC = { \override Stem #'transparent = ##f  } 

varA = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "1" ) 
\override TextSpanner
   #'(bound-details left stencil-align-dir-y) = #CENTER
\override TextSpanner #'(bound-details right text) =
   \markup { \draw-line #'(0 . -1) }
\override TextSpanner #'dash-period = #2
 \override TextSpanner #'dash-fraction = #0.5
 \override TextSpanner #'thickness = #1
 \override TextSpanner #'(bound-details right padding) = #-2
}

varAB = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "1,2" ) 
\override TextSpanner
   #'(bound-details left stencil-align-dir-y) = #CENTER
\override TextSpanner #'(bound-details right text) =
   \markup { \draw-line #'(0 . -1) }
\override TextSpanner #'dash-period = #2
 \override TextSpanner #'dash-fraction = #0.5
 \override TextSpanner #'thickness = #1
 \override TextSpanner #'(bound-details right padding) = #-2
}

varABC = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "1,2,3" ) }

varB = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "2" ) }
varC = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "3" ) }
varD = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "4" ) }
varE = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "5" ) }
varF = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "6" ) }
varG = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "7" ) }
varH = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "8" ) }
varI = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "9" ) }
varJ = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "10" ) }
varK = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "11" ) }

varBC = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "2,3" ) }
varBD = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "2,4" ) }
varCD = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "3,4" ) }
varFG = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "6,7" ) }
varAC = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "1,3" ) }
varCDE = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "3,4,5" ) }
varDE = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "4,5" ) }
varDEF = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "4,5,6" ) }
varEF = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "5,6" ) }
varGH = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "7,8" ) }
varIJ = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "9,10" ) }

accell = { \override TextSpanner #'(bound-details left text) = #(markup #:upright "accell" ) }

gliss = { \override Glissando #'style = #'zigzag }

\paper  {
	 myStaffSize = #20
	 #(define fonts
	 (make-pango-font-tree "Times New Roman"
	 "Nimbus Sans"
	 "Luxi Mono"
	 (/ myStaffSize 20)))
  }

endm = {
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 2 4)  
 \clef treble 
}

endmm = {
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble 
}

endmmm = {
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble 
}

stdB = { \override Stem  #'stroke-style = #"grace" }
stdE = { \revert Stem #'stroke-style }

ii = { \once \override NoteHead #'font-size = #-4 }

iii = {  \once \override Stem  #'stroke-style = #"grace"
\once \override NoteHead #'font-size = #-4 }

