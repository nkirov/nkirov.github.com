%{
BA_2_1_29
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\repeat volta 2 { 
g8 a16([ b]) c4 | 
\varA
d8\startTextSpan( ees) ees4\mordent\stopTextSpan | 
d8( c) c8( b) | 
\varB
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan a2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
g8 a16([ b]) c4 | d4\prall c |
\break
 c8( b) a4 | 
} \alternative { { 
 a4.( g8)  } { 
a4 r4 } }   
 \bar "|."
\endm
\varA
b8\startTextSpan( c) d8( ees)\stopTextSpan \bar "||"
\varB
a,4\startTextSpan r4\stopTextSpan
 \bar "|."
}
\addlyrics { Ми- ран- за ду- ма ма- ма си: Мар ма- мо, мар ми- ла ма- мо -мо }
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
  opus = "ВА-2,1,29"
  tagline = ##f
}


