%{
TD_141_1_02
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 138
  \time 2/4  
\acciaccatura c8 d4 d 
 \acciaccatura d8 e4( f16[ e d8)] 
 \acciaccatura c8 d4 d \acciaccatura d8 e4( f16[ e d8)] 
 d8\prall( c) b4 \acciaccatura c8 d4 d8( c) \acciaccatura c8 d4 d8( c) b2^\rtoe
 b4^\ltoe b^\rtoe b2\fermata
 \bar "|." 
 s4 \fixB d,4  
 \bar "|." 
}
\addlyrics { Ма- рий- ка, ма- мо, Ма- рий- ка, Ма- рий- ка тур- чин лю- би- ла }
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
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}

\header{
  opus = "ТД-141,1,2"
  tagline = ##f
}

