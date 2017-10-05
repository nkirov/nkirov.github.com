%{
BA_2_2_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
\repeat volta 2 {
\time 2/4
\varA
b4\startTextSpan b\stopTextSpan | 
\varB
\override Glissando #'style = #'zigzag
\noteFi d\startTextSpan\glissando b\stopTextSpan | 
a8( g) g4 | g8 a4. | a4 a }
\alternative  { { a a8( g)  }
%% \bar ":|"
{ a4 a } }
 \bar "|."
\endm
\varA
a4\startTextSpan b8( c\stopTextSpan) \bar "||"
\varB
b8(\startTextSpan c) b4\stopTextSpan  
\bar "|." 
}
\addlyrics { То- до- ро, То- до- ро, ка- ра кав- га- ли- йо- ли- йо }
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
  opus = "ВА-2,2,9"
  tagline = ##f
}


