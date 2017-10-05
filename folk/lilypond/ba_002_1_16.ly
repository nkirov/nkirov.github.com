%{
BA_2_1_16
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 3/8
  a8 b4 | c8( \times2/3 {b16[ c b } a8] ) | a8\noBeam a8( g) | b8~ ( b8[ c]) | b16([ a]) a8( g) | b8\noBeam b8\noBeam a8 | b8 a4\fermata^"= два такта" | a8 a4 | a4. 
 \bar "|." 
}
\addlyrics { Ген- дже- лий се- ло го- ля- мо, на Ген- дже- лий- ска си- дян- ка }
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
  opus = "ВА-2,1,16"
  tagline = ##f
}


