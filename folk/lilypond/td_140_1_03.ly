%{
TD_140_1_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 138
  \time 2/4
 d4 a a c\prall c4.( d8) 
 \varA
 d4\startTextSpan c8( bes) \stopTextSpan
 a2 c4 \acciaccatura c8 d4 
   \override Glissando #'style = #'zigzag
\varB   
  \noteFi d8\startTextSpan(\glissando c) c4\stopTextSpan 
  \afterGrace a2\( { \stdB e'8\)  \stdE } 
\varCD  
  d8\startTextSpan a4.\stopTextSpan 
\parS
  a2-\parenthesize-\fermata
 \bar "|." 
 s4 \fixB d,4 \fixC 
 \bar "|."
\endm 
\varA
 d'8\startTextSpan( c) c8( bes) \stopTextSpan \bar "||"  
\varB
d8\prall\startTextSpan( c) c( bes)\stopTextSpan \bar "||" 
\varC
 a8\startTextSpan a4.\stopTextSpan \bar "||" 
\varD 
a4\startTextSpan a4\stopTextSpan 
\bar "|." 
}
\addlyrics { Сто- ян на- до- лу тръг- ну- ва и си на Доб- ра ду- ма- ше }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%   ragged-last = ##t
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}

\header{
  opus = "ТД-140,1,3"
  tagline = ##f
}



