%{
BA_1_2_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
a2 | b4 c | dis2^"↓" | dis4^"↓"( c8 b) | dis8^"↓"( c) c8( b) | a2|
\varA
dis8^"↓"\startTextSpan( c b c\stopTextSpan) | 
\varBC
c4\startTextSpan c8( b\stopTextSpan) | 
a2 | c4~( c8 b) |
\varD 
\gliss
\noteFi b8\startTextSpan(\glissando a) a4\stopTextSpan | a2
 \bar "|."
\endm 
\varA
d8\startTextSpan( c~ c4\stopTextSpan) \bar "||"
\varB
c8\startTextSpan( b) a4\stopTextSpan \bar "||"
\varC
c4\startTextSpan b\stopTextSpan \bar "||"
\varD
b4\startTextSpan a\stopTextSpan
\bar "|." 
}
\addlyrics { Ма- ри- я Стай- ко ду- ма- ше: Бай- не ле, ба- ти Стай- ко льо }
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
  opus = "ВА-1,2,11"
  tagline = ##f
}


