%{
TD_178_1_10
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 144
  \time 2/4 
\acciaccatura fis8 g4( a16[ g fis8)]  
 fis8( e) e([ fis)] fis4.( e8) d4.( e8)
 fis( e) e([ d)] d4.( c8) \break
 \acciaccatura d8 e2 e8( d) c4 \acciaccatura d8 e2 
 e4.( fis8) e( d) d4 d2
 \bar ":|" 
}
\addlyrics { Съ- бра- ли ми, са съ- бра- ли от де- вет къш- ли ов- ча- ри }
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
  opus = "ТД-178,1,10"
  tagline = ##f
}


