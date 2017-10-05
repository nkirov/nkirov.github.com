%{
BA_1_2_26
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
e4 d | a2 | d4 c | c8( b) a4 | 
\varA
b4.\startTextSpan( a8\stopTextSpan) | 
\varB
b8\startTextSpan( c) d4\stopTextSpan |
a2 |
\break
\varC
b4\startTextSpan c\stopTextSpan | 
c8( b) a4 | a4 r4 
 \bar ":|" 
\endm
\varA
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan a2\stopTextSpan \bar "||"
\set Score.measureLength = #(ly:make-moment 2 4)
\varB
e'4\startTextSpan d4\stopTextSpan \bar "||"
\varC
d4\startTextSpan c\stopTextSpan 
\bar "|." 
}
\addlyrics { "В Сли-" вя- на, "в гор-" на- та мах- ла, във Сли- вян хо- ро  и- гра- и }
\addlyrics { до вся- ка мо- ма и мо- мък, Сте- фан при Бя- ла  и- гра- и }
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
  opus = "ВА-1,2,26"
  tagline = ##f
}


