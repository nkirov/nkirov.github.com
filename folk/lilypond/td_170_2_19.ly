%{
TD_170_2_19
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 8 = 160
  \time 9/16
 d8 d\noBeam \acciaccatura f g 
\varA
 a16\startTextSpan([ g a\stopTextSpan)] 
 f8 g a16([ g)] g8. g8 a bes 
 \varA
 a16\startTextSpan([ g a\stopTextSpan)] 
 f8 e d d8.
 \bar "|."
\endm 
\varA
 a'16.\startTextSpan([ g\stopTextSpan)]  
 \bar "|."  
}
\addlyrics { Ма- ри Ка- ли- но, Ка- ли но, ма- ри, ху- ба- ва, Ка- ли- но }
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
		tempoWholesPerMinute = #(ly:make-moment 160 8)
		}
	}
}

\header{
  opus = "ТД-170,2,19"
  tagline = ##f
}



