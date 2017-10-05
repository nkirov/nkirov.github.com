%{
TD_171_1_15
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 116
  \time 2/4
  d8( e) f( g) 
\varA
  f\startTextSpan( e d4\stopTextSpan) 
  d8( e) f( g) \times 2/3 { f4 e( d) } e2  
  \acciaccatura f8 g4 \acciaccatura g8 f( e) f( e d e) f4 
  \acciaccatura g8 f( e) d16([ e)] d8\noBeam~ d4 d2
 \bar "|."
\endm 
\varA
 \times 2/3 { f4\startTextSpan( e d\stopTextSpan) }
 \bar "|."
}
\addlyrics { Съ- бра- ли ми са, на- бра- ли ця- ло- то се- ло съ- ве- та }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}

\header{
  opus = "ТД-171,1,15"
  tagline = ##f
}



