%{
BA_2_1_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
b8( c) d4 | 
\varA
e4\startTextSpan e\stopTextSpan | 
e8( d) d8( c) | b4 \acciaccatura d8 e4 | e8( d) d4 | e4 e | e8( d) d8( c) | b2 | b4 r4 
 \bar ":|" 
\endm
\varA
f'4\startTextSpan f8( e)\stopTextSpan 
\bar "|."
}
\addlyrics { Ка- ле- са Сто- ян, Сто- йе- не, ка- ле- са Сто- ян, Сто- йе- не, }
\addlyrics { де- вят ку- мич- ки на прош- ка и де- вят се- стри на го- сти }
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
  opus = "ВА-2,1,28"
  tagline = ##f
}


