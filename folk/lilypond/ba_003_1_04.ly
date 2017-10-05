%{
BA_3_1_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
g8\noBeam a16( b) c8( b) | a2 | a8 g\noBeam g g\noBeam | b( c) d4 | d8 c\noBeam c( b) |
a2 | a8 g\noBeam g g\noBeam | g4 f! | g8 b\noBeam c g\noBeam | a2 | a8  g\noBeam g g\noBeam |
c4 c8( b) | g8 a\noBeam a a\noBeam | a4.( b8) | a8 g\noBeam g g\noBeam | g4 g
 \bar "|." 
}
\addlyrics { Ста- ни, мъ- жо, за дър- ва да и- деш,  
             ста- ни, мъ- жо, за дър- ва да и- деш!
	     Сля- па ли си, мо, чи ма- га- ри ня- ма, 
	     сля- па ли си, мо, чи ма- га- ри ня- ма! }
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
%
\header{
  opus = "ВА-3,1,4"
  tagline = ##f
}


