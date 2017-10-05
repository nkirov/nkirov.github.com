%{
TD_179_2_23
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 8 = 144
  \time 5/16
 d8 d8.\noBeam \acciaccatura g8 a\noBeam~( a[ g16)] 
 \varA 
a8\startTextSpan a16.([ g16.\stopTextSpan)] 
 g32( f16.~ \afterGrace f8.)\noBeam( { g16[ f e)] } | e16[( d)] d8.\noBeam | 
 d16([ e)] f16.([ g)] |  g32( f16.~ \afterGrace f8.)\noBeam( { g16[ f e)] } |
\varB
 f8\startTextSpan \times 3/5 { e16 ([f e d e\stopTextSpan)] } 
 d8~ d8. | d8 d8.\noBeam
 \bar "|." 
 s16 \fixB a4 \fixC 
 \bar "|."
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble  
\varA 
a'16\startTextSpan([ bes)]  a16.([ g16.\stopTextSpan)] \bar "||" 
\varB 
f8\startTextSpan f16.([ e\stopTextSpan)]  
\bar "|." 
}
\addlyrics { Съ- бра- ли ми са, съ- бра- ли от се- дем се- ла хо- ра- та }
\layout {
  indent = 0\mm
  line-width = 190\mm
  ragged-right=##f
	}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}
\header{
  opus = "ТД-179,2,23"
  tagline = ##f
}


