%{
BA_3_1_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
d8\noBeam d4 c8 | c8( b) b( a) | b( a) a( g) | g2 | g8 c4 c8 | b4. g8 | a4 a | a4.( g8) | g8 d'4 c8 | b4. a8 | b8( a) a( g) | g4 r4 | c8 c4 c8 | b4. g8 | a4 a | a r4 
 \bar "|." 
}
\addlyrics { То- до- ро, лю- бе То- до- ро, що ти пи- ро- то три- пе- ри, 
То- до- ро, лю- бе То- до- ро, що ти пи- ро- то три- пе- ри }
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
  opus = "ВА-3,1,13"
  tagline = ##f
}


