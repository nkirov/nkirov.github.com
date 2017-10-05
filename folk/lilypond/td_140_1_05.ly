%{
TD_140_1_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 144
  \time 2/4 
\acciaccatura b8 c4.( b8) 
  \acciaccatura b8 c4 c8( b) \acciaccatura c8 d4 c8( b)
 a2 c4 g8 f e4 d a' a8\prall( g) a2 \acciaccatura a8 c4 g8 f\noBeam e4 d a' g a2 
 \acciaccatura a8 c4 g8 f e4 d a' g g2 
 \bar "|."  
 s4 \fixB d4 
 \bar "|."
}
\addlyrics { Ра- де ле, Ра- де ле, Ра- да си ис- ка да и- де на И- ни 
мах- ла на сбо- ра, ма- ма си Ра- да не пу- ща }
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
  opus = "ТД-140,1,5"
  tagline = ##f
}


