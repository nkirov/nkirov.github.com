%{
BA_3_1_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
d8 c4 d8 | e4 d | a2 | d4 c | b8 a4 b8 | 
\gliss
\set Score.measureLength = #(ly:make-moment 3 4)
c4 \noteFi b\glissando \hideNotes a \unHideNotes  | 
\varA
s4\startTextSpan a2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
\noteFi d4\glissando c | b8 a4 b8 | c4 \noteFi b8\glissando( a) | a2 | a4 a 
 \bar ":|" 
\endm
\varA
a4\startTextSpan r\stopTextSpan 
\bar "|."
}
\addlyrics { За- чув- ца ду- ма Ди- ми- рю: Ди- ми- ре, сел- ска " " ки- ха- я, Ди- ми- ре, сел- ска ки- ха- я, }
\addlyrics { ти ка- то хо- диш из се- ло, за- що ни ри- чеш " " на ку- ма за- що ни ри- чеш на ку- ма }
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
  opus = "ВА-3,1,28"
  tagline = ##f
}


