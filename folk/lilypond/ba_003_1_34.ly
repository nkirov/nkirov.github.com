%{
BA_3_1_34
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  \repeat volta 2 { g4 a8( b) | c( b) a( g) | a4 a8( g) | f8([ e] d4) | g4 g | a8( g) f4 | e d }
  \alternative { {  a'4.( g8)  }
%% \bar ":|"
{ d4 r4 } }
 \bar "|."
}
\addlyrics { Кър- па- чо льо, лю- би ле, за- кър- пи ми чех- ли- ти -ти }
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
  opus = "ВА-3,1,34"
  tagline = ##f
}


