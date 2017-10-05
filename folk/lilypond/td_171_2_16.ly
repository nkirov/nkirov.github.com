%{
TD_171_2_16
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 144
  \time 2/4
 d8( c) d( e) \acciaccatura e8 f4( g16[ f e8)] d( c) d( f) f( e) d4 d4.( e8) 
 f( e) d4 d2 
 \varA
 c4\startTextSpan d8( c) d d4.\stopTextSpan 
 d4 r4
 \bar "|."
\endm 
\varA
 c4\startTextSpan d d^\ltoe d\rtoe\stopTextSpan  
 \bar "|."  
}
\addlyrics { Си- деф- ка ра- но ра- ни- ла, ра- но ми ра- но "в ни-" де- ля }
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
		tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}

\header{
  opus = "ТД-171,2,16"
  tagline = ##f
}



