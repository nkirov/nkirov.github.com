%{
TD_179_2_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
\cadenzaOn
\parG
   g4 \acciaccatura \parenthesize g8 a4. a8 a8\prall[( g )]  
  \acciaccatura g8 a2.( a8) r8 g8 a4( g8) g\noBeam( f4. e8) r8 r4
  \acciaccatura f8 g4 g2  
  a8^\ltoe[( g)] f16[( e d e)] d1\fermata d8\noBeam d8 d2 
  \bar "|." 
  s4 \fixB b4  
  \bar "|."
}
\addlyrics { Го- лям са ба- яс хва- на- ле тур- чан и Ма- нол два- ма- та }
%
\layout {
   \context { \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = #190
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
%%  title = "Гулям са баяс хванали"
  composer = "ТД-179,2,28"
   tagline = ##f
}



