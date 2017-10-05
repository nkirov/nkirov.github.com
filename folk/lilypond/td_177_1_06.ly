%{
TD_117_1_06
%}

\include "td-preamble.ly"

\score {
\relative c' {
%% \tempo 4 = 152
  \time 2/4  
 \acciaccatura f8 g4 d8( c) 
d4.( e8) \acciaccatura g8 a4( a16 g f8) f( e) d( c)
d4.( e8) f4( g16 f e8) d^\ltoe( e^\rtoe) d( c) d4 e f8( g) e16( d e8) d2 d2
 \bar "|." 
}
\addlyrics { Бре ов- чар- ко, о- ло- вар- ко, из- ве- ди ма от таз го- ра }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}

\header{
  opus = "ТД-177,1,6"
  tagline = ##f
}


