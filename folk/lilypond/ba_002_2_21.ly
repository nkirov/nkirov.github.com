%{
BA_2_2_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA
e4\startTextSpan d\stopTextSpan | 
c2 | d4 d8( c) | d8( c) c( b) | a2 | d4 d8( c) |
\varB
c4\startTextSpan d\stopTextSpan | 
\varC
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan c2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
d8( c) b( a) | d8( c) c( b) | a2 | a4 a 
 \bar "|." 
\endm 
\varA
c4\startTextSpan d8( c\stopTextSpan) \bar "||"
\varB
a4\startTextSpan d\stopTextSpan \bar "||"
\varC
c4.(\startTextSpan d8\stopTextSpan) 
\bar "|."
}
\addlyrics { Раз- и- гра- ло съ~й Чер- но- то мо- ре, 
раз- и- гра- ло съ~й Чер- но- то мо- ре }
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
  opus = "ВА-2,2,21"
  tagline = ##f
}


